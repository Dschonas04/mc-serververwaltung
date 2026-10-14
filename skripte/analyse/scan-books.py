#!/usr/bin/env python3
# Durchsucht Region-Dateien nach Block-Entities mit Büchern.
import sys, os, zlib, struct, io, glob, json

def rd(f, n):
    b = f.read(n)
    if len(b) != n: raise EOFError
    return b

def tag(f, t):
    if t == 1: return struct.unpack('>b', rd(f,1))[0]
    if t == 2: return struct.unpack('>h', rd(f,2))[0]
    if t == 3: return struct.unpack('>i', rd(f,4))[0]
    if t == 4: return struct.unpack('>q', rd(f,8))[0]
    if t == 5: return struct.unpack('>f', rd(f,4))[0]
    if t == 6: return struct.unpack('>d', rd(f,8))[0]
    if t == 7: n = struct.unpack('>i', rd(f,4))[0]; return rd(f,n)
    if t == 8: n = struct.unpack('>H', rd(f,2))[0]; return rd(f,n).decode('utf-8','replace')
    if t == 9:
        et = rd(f,1)[0]; n = struct.unpack('>i', rd(f,4))[0]
        return [tag(f, et) for _ in range(n)]
    if t == 10:
        d = {}
        while True:
            et = rd(f,1)[0]
            if et == 0: return d
            nl = struct.unpack('>H', rd(f,2))[0]; k = rd(f,nl).decode('utf-8','replace')
            d[k] = tag(f, et)
    if t == 11: n = struct.unpack('>i', rd(f,4))[0]; return list(struct.unpack('>%di'%n, rd(f,4*n)))
    if t == 12: n = struct.unpack('>i', rd(f,4))[0]; rd(f,8*n); return None
    raise ValueError(t)

def root(data):
    f = io.BytesIO(data); t = rd(f,1)[0]; nl = struct.unpack('>H', rd(f,2))[0]; rd(f,nl)
    return tag(f, t)

def books(items, path):
    out = []
    for it in items or []:
        if not isinstance(it, dict): continue
        iid = it.get('id','')
        comp = it.get('components', {}) or {}
        if iid in ('minecraft:book','minecraft:enchanted_book','minecraft:writable_book','minecraft:written_book'):
            out.append((path, it.get('Slot', it.get('slot')), iid, it.get('count',1), comp.get('minecraft:stored_enchantments')))
        # verschachtelte Container (Shulker, Bündel)
        c = comp.get('minecraft:container')
        if c:
            for e in c:
                sub = e.get('item', {})
                sub = dict(sub); sub['Slot'] = e.get('slot')
                out += books([sub], path + ['container@%s' % it.get('Slot', it.get('slot'))])
        b = comp.get('minecraft:bundle_contents')
        if b: out += books(b, path + ['bundle@%s' % it.get('Slot', it.get('slot'))])
    return out

cx, cz, rad = int(sys.argv[2]), int(sys.argv[3]), int(sys.argv[4])
res = []
for fn in glob.glob(os.path.join(sys.argv[1], 'r.*.*.mca')):
    _, rx, rz, _ = os.path.basename(fn).split('.'); rx, rz = int(rx), int(rz)
    if rx*512 > cx+rad or rx*512+511 < cx-rad or rz*512 > cz+rad or rz*512+511 < cz-rad: continue
    with open(fn,'rb') as f: data = f.read()
    for i in range(1024):
        off = int.from_bytes(data[i*4:i*4+3],'big')
        if off == 0: continue
        p = off*4096
        ln = struct.unpack('>i', data[p:p+4])[0]; comp = data[p+4]
        raw = data[p+5:p+4+ln]
        try:
            raw = zlib.decompress(raw) if comp == 2 else raw
            ch = root(raw)
        except Exception:
            continue
        for be in ch.get('block_entities', []) or []:
            x, y, z = be.get('x'), be.get('y'), be.get('z')
            if x is None or abs(x-cx) > rad or abs(z-cz) > rad: continue
            items = be.get('Items') or be.get('items')
            found = books(items, [be.get('id')])
            # Travelers Backpack u. a. verschachtelte Inventare
            if not items:
                for k, v in be.items():
                    if isinstance(v, dict) and isinstance(v.get('Items'), list):
                        found += books(v['Items'], [be.get('id'), k])
            for path, slot, iid, cnt, ench in found:
                res.append({'x':x,'y':y,'z':z,'path':path,'slot':slot,'id':iid,'count':cnt,'ench':ench})
print(json.dumps(res, default=str))
