import collections
import os as _os; _HIER = _os.path.dirname(_os.path.abspath(__file__))
exec(open(_HIER + '/berg_lib.py').read().split("orig=World")[0])
W=set()
for x in range(-96,96):
  for z in range(-96,96):
    for y in range(58,70):
      b=live.get(x,y,z)
      if b and b.split('[')[0] in ('minecraft:water','tnt_arsenal:contaminated_water'): W.add((x,y,z))
seen=set(); comps=[]
for p in W:
  if p in seen: continue
  st=[p]; seen.add(p); c=[]
  while st:
    q=st.pop(); c.append(q); x,y,z=q
    for d in ((1,0,0),(-1,0,0),(0,1,0),(0,-1,0),(0,0,1),(0,0,-1)):
      n=(x+d[0],y+d[1],z+d[2])
      if n in W and n not in seen: seen.add(n); st.append(n)
  comps.append(c)
comps.sort(key=len)
big=[c for c in comps if len(c)>40]
print('Komponenten',len(comps),'groß',[ (len(c),min(c)) for c in big])
small=[c for c in comps if len(c)<=40]
print('klein',len(small))
for c in small: print(len(c), sorted(c)[:3])
open('/tmp/einzel.txt','w').write('\n'.join(f'{x} {y} {z}' for c in small for (x,y,z) in c))
