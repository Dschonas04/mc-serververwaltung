import collections
import os as _os; _HIER = _os.path.dirname(_os.path.abspath(__file__))
exec(open(_HIER + '/berg_lib.py').read().split("orig=World")[0])
c=collections.Counter(); rows={}
for z in range(-96,64,3):
  row=''
  for x in range(-60,40,2):
    ch='.'
    for y in (64,63,62,61,60):
      b=live.get(x,y,z)
      if b is None: ch='?';break
      n=b.split('[')[0]
      if 'water' in n:
        lv=b.split('level=')[1].rstrip(']') if 'level=' in b else '0'
        c[(y,lv)]+=1
        ch='S' if lv=='0' else 'w'; 
        if y==61: ch=ch.lower() if ch!='S' else 's'
        break
      if n not in ('minecraft:air','minecraft:short_grass','minecraft:tall_grass'):
        if y==61: ch='.' 
        elif y>61: ch='#'
        else: ch='_'
        break
    row+=ch
  print(f'{z:4d} {row}')
print(c.most_common(20))
