import sys
src=open('/root/berg_lib.py').read().split("orig=World")[0]
exec(src)
AIR=('minecraft:air','minecraft:cave_air','minecraft:void_air')
import os; R=int(os.environ.get("R","48"))
SKIPX=lambda x,z: (-48<=x<=-10 and -19<=z<=12) or (12<=x<=24 and 14<=z<=26)
NAT=('stone','dirt','grass_block','sand','gravel','clay','water','andesite','diorite','granite','deepslate','tuff','coarse','podzol','mud','snow','ice','calcite','sandstone','terracotta','ore','moss_block','rooted')
SOFT=('leaves','log','grass','flower','daisy','bluet','poppy','tulip','fern','bush','petals','snow','vine','sapling','short','tall','dandelion','azalea','moss_carpet','lilac','rose','peony','mushroom','sugar','kelp','seagrass','lily','pumpkin','melon','cactus','berry','dripleaf','leaf_litter','firefly','cocoa','wildflower')
BUILD=('planks','brick','slab','stairs','fence','door','glass','polished','chest','barrel','torch','lantern','bed','crafting','furnace','wool','concrete','carpet','sign','wall','trapdoor','chisel','create','smooth','cut_','lamp','rail','bricks','tile','hay','bookshelf','anvil','glazed','scaffold','ladder','waystone')
built=[];heights={};water={}
for x in range(-R,R+1):
  for z in range(-R,R+1):
    top=None
    for y in range(200,40,-1):
      b=live.get(x,y,z)
      if b is None: break
      if b in AIR: continue
      n=b.split('[')[0]
      short=n.split(':')[1]
      if SKIPX(x,z): pass
      elif not n.startswith('minecraft:') or any(k in short for k in BUILD):
        built.append((x,y,z,n))
      if top is None and not any(k in short for k in SOFT):
        top=(y,short)
      if top and y<top[0]-3: break
    heights[(x,z)]=top
import collections
print('built',len(built))
c=collections.Counter(b[3] for b in built); print(c.most_common(25))
if built:
  xs=[b[0] for b in built]; zs=[b[2] for b in built]; print('bbox',min(xs),max(xs),min(zs),max(zs))
# heightmap coarse
for z in range(-R,R+1,6):
  row=''
  for x in range(-R,R+1,6):
    t=heights[(x,z)]
    if t is None: row+='  ??'; continue
    ch='~' if t[1] in('water','ice') else ' '
    row+=f'{ch}{t[0]:3d}'
  print(f'{z:4d}',row)
g=collections.defaultdict(list)
for x,y,z,n in built: g[n].append((x,y,z))
for n,l in g.items():
  xs=[p[0] for p in l];ys=[p[1] for p in l];zs=[p[2] for p in l]
  print(n,len(l),'x',min(xs),max(xs),'y',min(ys),max(ys),'z',min(zs),max(zs))
print('surface types', collections.Counter(t[1] for t in heights.values() if t).most_common(8))
