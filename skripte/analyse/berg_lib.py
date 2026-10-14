# Compares live terrain with freshly generated terrain and writes fill commands
# that rebuild only what is missing above the current surface.
import sys, os, zlib, struct, collections

sys.argv=[sys.argv[0]]
import os as _os; _HIER = _os.path.dirname(_os.path.abspath(__file__))
exec(open(_HIER + '/scan-books.py').read().split('def books')[0])
_tag=tag
def tag(f, t):
    if t == 12:
        n = struct.unpack('>i', rd(f,4))[0]; return list(struct.unpack('>%dq'%n, rd(f,8*n)))
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
    return _tag(f, t)
class World:
    def __init__(self, reg): self.reg=reg; self.cache={}
    def chunk(self, cx, cz):
        k=(cx,cz)
        if k in self.cache: return self.cache[k]
        fn=f'{self.reg}/r.{cx>>5}.{cz>>5}.mca'; secs=None
        if os.path.exists(fn):
            with open(fn,'rb') as f:
                f.seek(4*((cx&31)+(cz&31)*32)); off=struct.unpack('>I', f.read(4))[0]
                if off:
                    f.seek((off>>8)*4096); ln=struct.unpack('>I', f.read(4))[0]; f.read(1)
                    c=root(zlib.decompress(f.read(ln-1))); secs={}
                    for s in c.get('sections',[]):
                        bs=s.get('block_states') or {}
                        pal=[]
                        for p in bs.get('palette',[]):
                            props=p.get('Properties') or {}
                            pal.append(p['Name']+('['+','.join(f'{a}={b}' for a,b in sorted(props.items()))+']' if props else ''))
                        if pal: secs[s['Y']]=(pal,[v & 0xFFFFFFFFFFFFFFFF for v in bs['data']] if bs.get('data') else None)
        self.cache[k]=secs; return secs
    def get(self, x, y, z):
        secs=self.chunk(x>>4, z>>4)
        if secs is None: return None
        s=secs.get(y>>4)
        if not s: return 'minecraft:air'
        pal,arr=s
        if arr is None: return pal[0]
        bits=max(4,(len(pal)-1).bit_length()); per=64//bits
        i=((y&15)*256+(z&15)*16+(x&15)); v=(arr[i//per]>>((i%per)*bits))&((1<<bits)-1)
        return pal[v]
live=World(_os.environ.get('MC_DIR', '/srv/minecraft') + '/world/dimensions/minecraft/overworld/region')
orig=World(_os.environ.get('REGEN_DIR', 'regen'))  # frisch erzeugte Vergleichswelt
AIR=('minecraft:air','minecraft:cave_air')
SOFT=('leaves','log','grass','flower','daisy','bluet','poppy','tulip','fern','bush','petals','snow','vine','sapling','short','tall','dandelion','azalea','moss_carpet','lilac','rose','peony')
def surface(w, x, z):
    for y in range(200, 60, -1):
        b=w.get(x,y,z)
        if b is None: return None
        n=b.split('[')[0].split(':')[1]
        if b.split('[')[0] not in AIR and not any(s in n for s in SOFT) and 'water' not in n: return y
    return None
