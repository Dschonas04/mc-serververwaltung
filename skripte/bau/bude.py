C=[]
def f(x1,y1,z1,x2,y2,z2,b): C.append(f"fill {x1} {y1} {z1} {x2} {y2} {z2} {b}")
def s(x,y,z,b): C.append(f"setblock {x} {y} {z} {b}")
G=62; X1,X2=-25,-14; ZF,ZB=-5,-12
C.append('kill @e[type=villager,tag=raketenhaendler]')
C.append('kill @e[type=glow_item_frame,tag=raketenbude]')
# alte Stände 1+2 Nord, Laternenpfahl, Schild weg
f(X1-1,G+1,ZB,X2+1,80,-4,'air')
f(X1,G,ZB,X2,G,ZF,'dark_oak_planks')
f(X1,G,ZF+1,X2,G,ZF+1,'polished_andesite')
# Fläche hinter der Bude für die Deko-Raketen
f(X1-1,G,-16,X2+1,80,ZB-1,'air'); f(X1-1,G-1,-16,X2+1,G-1,ZB-1,'dirt'); f(X1-1,G,-16,X2+1,G,ZB-1,'grass_block')
# Boden: Rand roter Beton, innen Schachbrett
f(X1+1,G,ZB+1,X2-1,G,ZF-1,'red_concrete')
for x in range(X1+2,X2-1):
    for z in range(ZB+2,ZF-1):
        s(x,G,z,'white_concrete' if (x+z)%2 else 'dark_oak_planks')
# Pfosten
for x in (X1,X2,-21,-18):
    for z in (ZF,ZB):
        if x in (-21,-18) and z==ZB: continue
        f(x,G+1,z,x,G+5,z,'stripped_dark_oak_log')
# Rückwand + Seiten
f(X1+1,G+1,ZB,X2-1,G+5,ZB,'dark_oak_planks')
f(X1+1,G+3,ZB,X2-1,G+3,ZB,'red_concrete')
for x in (X1,X2):
    f(x,G+1,ZB+1,x,G+1,ZF-1,'dark_oak_fence')
    f(x,G+5,ZB+1,x,G+5,ZF-1,'dark_oak_planks')
# Theke aus Fässern mit Lücke hinter den Pfosten
f(X1+1,G+1,ZF,X2-1,G+1,ZF,'barrel[facing=up]')
# Lager-Fässer an den Seiten (3 hoch) und hinten
for x,face in ((X1+1,'east'),(X2-1,'west')):
    f(x,G+1,ZB+1,x,G+3,ZF-3,f'barrel[facing={face}]')
f(-22,G+1,ZB+1,-17,G+1,ZB+1,'barrel[facing=south]')
# Zeltdach rot/weiß gestreift, gestuft, First entlang x
for k,(z1,z2) in enumerate([(-13,-4),(-12,-5),(-11,-6),(-10,-7),(-9,-8)]):
    for x in range(X1-1,X2+2):
        f(x,G+6+k,z1,x,G+6+k,z2,('red' if x%2 else 'white')+'_wool')
# Laternen
for x in (-23,-19,-16):
    s(x,G+5,-7,'lantern[hanging=true]'); s(x,G+5,-10,'lantern[hanging=true]')
for x in (X1,X2,-21,-18):
    s(x,G+5,ZF-0,'stripped_dark_oak_log')
for x in (X1-1,X2+1):
    s(x,G+5,ZF,'lantern[hanging=true]') if False else None
# Banner an den Frontpfosten
for x in (X1,X2):
    s(x,G+4,ZF+1,'red_wall_banner[facing=south]{patterns:[{color:"white",pattern:"minecraft:rhombus"},{color:"yellow",pattern:"minecraft:circle"}]}')
# Leuchtschilder am Dachrand (Wolle z=-4, Schilder z=-3)
def sign(x,lines):
    m=','.join('"%s"'%l for l in lines)
    s(x,G+6,-3,'dark_oak_wall_sign[facing=south]{front_text:{color:"red",has_glowing_text:1b,messages:[%s]}}'%m)
sign(-22,['','RAKETEN','',''])
sign(-20,['64 Raketen','Flugdauer 1','für','2 Diamanten'])
sign(-19,['64 Raketen','Flugdauer 1','für','2 Diamanten'])
sign(-17,['','RAKETEN','',''])
# Leuchtrahmen mit Raketen an der Rückwand
for x in range(-23,-15):
    C.append('summon glow_item_frame %d %d %d {Tags:["raketenbude"],Facing:3b,Fixed:1b,Invulnerable:1b,Item:{id:"minecraft:firework_rocket",count:1}}'%(x,G+4,ZB+1))
# Zwei große Deko-Raketen hinter der Bude
def rocket(x,z):
    f(x,G+1,z,x,G+12,z,'white_concrete')
    for y in (G+4,G+9): s(x,y,z,'red_concrete')
    s(x,G+13,z,'red_concrete'); s(x,G+14,z,'lightning_rod')
    for dx,dz,fc in ((1,0,'east'),(-1,0,'west'),(0,1,'south'),(0,-1,'north')):
        s(x+dx,G+1,z+dz,'red_concrete'); s(x+dx,G+2,z+dz,f'red_terracotta')
        s(x+dx,G+3,z+dz,f'end_rod[facing={fc}]') if False else None
    s(x,G,z,'shroomlight')
rocket(-24,-14); rocket(-15,-14)
# Händler
C.append('summon villager -19.5 %d -7.5 {Tags:["raketenhaendler"],NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,'
         'CustomName:"Raketenhändler",CustomNameVisible:1b,Rotation:[0f,0f],'
         'VillagerData:{profession:"minecraft:fletcher",level:5,type:"minecraft:plains"},'
         'Offers:{Recipes:[{buy:{id:"minecraft:diamond",count:2},sell:{id:"minecraft:firework_rocket",count:64},'
         'maxUses:2147483647,rewardExp:0b,xp:0,priceMultiplier:0f,demand:0,specialPrice:0}]}}'%(G+1))
out=['forceload add -48 -16 26 28','sleep 6']+C+['sleep 2','forceload remove -48 -16 26 28']
open('/tmp/bude.txt','w').write('\n'.join(out)+'\n'); print(len(out))
