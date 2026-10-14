import json,re,socket,struct,sys,collections
exec(open('/root/rcon-s4.py').read().split('send(s, 2, 2')[0])
def cmd(c):
    send(s,9,2,c); return re.sub('§.','',recv(s)[2])
D='/home/amp/.ampdata/instances/villagernews01/Minecraft'
claims=json.load(open(D+'/world/chestlogger/claims.json'))['claims']
def unpack(p):
    x=p>>38; z=(p>>12)&0x3FFFFFF; z=z-(1<<26) if z>=1<<25 else z; y=p&0xFFF; y=y-(1<<12) if y>=1<<11 else y
    return x,y,z
owners=sys.argv[1].split(',')
rec=re.compile(r'\[(\d{4}-\d\d-\d\d \d\d:\d\d:\d\d)\] #(\d+) (\S+) \(([A-Z_]+)\): (.*?) @ \((-?\d+), (-?\d+), (-?\d+)\)')
seen=set(); out=[]
for c in claims:
    if c['ownerName'] not in owners or c['dimension']!='minecraft:overworld': continue
    x,y,z=unpack(c['pos']); page=1
    while True:
        r=cmd(f'chestlog inspect {x} {y} {z} {page}') if page>1 else cmd(f'chestlog inspect {x} {y} {z}')
        m=re.search(r'Page (\d+)/(\d+)',r)
        for g in rec.findall(r):
            if g[1] in seen: continue
            seen.add(g[1]); out.append((c['ownerName'],)+g)
        if not m or int(m.group(1))>=int(m.group(2)) or page>=30: break
        page+=1
acts=collections.Counter((o,g[2],g[3]) for o,*g in [(r[0],)+r[1:] for r in out])
for k,v in sorted(acts.items()): print(v,k)
print('--- fremde Entnahmen / Abbau ---')
for r in out:
    owner,date,id_,actor,action,changes,*pos=r
    if actor!=owner and ('REMOVE' in action or 'BREAK' in action or '-' in changes):
        print(date,actor,action,'in Kiste von',owner,pos,changes[:200])
