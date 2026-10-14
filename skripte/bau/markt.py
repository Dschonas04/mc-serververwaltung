import random
random.seed(1012)
C=[]
def f(x1,y1,z1,x2,y2,z2,b,mode=''): C.append(f"fill {x1} {y1} {z1} {x2} {y2} {z2} {b}{(' '+mode) if mode else ''}")
def s(x,y,z,b): C.append(f"setblock {x} {y} {z} {b}")
G=62  # Bodenhöhe (Platz am Spawn liegt auf 62)

# ---------- Marktviertel westlich vom Spawn ----------
f(-47,G,-12,-11,80,12,'air')
f(-47,G-1,-12,-11,G-1,12,'dirt')
f(-47,G,-12,-11,G,12,'grass_block')
# Straße
f(-47,G,-3,-10,G,3,'polished_andesite')
f(-47,G,-2,-10,G,2,'stone_bricks')
for x in range(-47,-9):
    for z in range(-2,3):
        r=random.random()
        if r<0.12: s(x,G,z,'mossy_stone_bricks')
        elif r<0.22: s(x,G,z,'cracked_stone_bricks')
# Wege zu den Ständen
starts=[-18,-25,-32,-39,-46]
def stall(x1,side,c1,c2,shop=False):
    x2=x1+4
    zf,zb=(-5,-10) if side<0 else (5,10)
    zi=range(min(zf,zb),max(zf,zb)+1)
    lo,hi=min(zf,zb),max(zf,zb)
    face='south' if side<0 else 'north'
    back='north' if side<0 else 'south'
    f(x1,G,lo,x2,G,hi,'spruce_planks')
    f(x1,G,zf-side,x2,G,zf-side,'polished_andesite')  # Vorplatz z=±4
    # Pfosten
    for x in (x1,x2):
        for z in (zf,zb):
            f(x,G+1,z,x,G+4,z,'stripped_spruce_log')
    # Rückwand
    f(x1+1,G+1,zb,x2-1,G+3,zb,'spruce_planks')
    f(x1+1,G+4,zb,x2-1,G+4,zb,'spruce_slab[type=bottom]')
    # Seitenwände halb hoch
    for x in (x1,x2):
        f(x,G+1,min(zf,zb)+1,x,G+1,max(zf,zb)-1,'spruce_fence')
    # Theke aus Fässern
    f(x1+1,G+1,zf,x2-1,G+1,zf,'barrel[facing=up]')
    # Lager-Fässer an der Rückwand
    zr=zb+side*-1
    f(x1+1,G+1,zr,x2-1,G+2,zr,f'barrel[facing={face}]')
    # Markise gestreift, vorne ein Block Überstand
    for x in range(x1,x2+1):
        col=c1 if (x-x1)%2==0 else c2
        f(x,G+5,lo-(1 if side>0 else 0) if side>0 else lo,x,G+5,hi+(1 if side<0 else 0) if side<0 else hi,f'{col}_wool')
    # Überstand Richtung Straße
    zo=zf-side
    for x in range(x1,x2+1):
        col=c1 if (x-x1)%2==0 else c2
        s(x,G+4,zo,f'{col}_carpet') if False else None
    # Laternen unter der Markise
    s(x1+1,G+4,zf,'lantern[hanging=true]'); s(x2-1,G+4,zf,'lantern[hanging=true]')
    return zf,face

colors=[('red','white'),('blue','white'),('yellow','orange'),('green','lime'),('purple','magenta'),
        ('cyan','light_blue'),('brown','orange'),('red','yellow'),('blue','light_blue'),('lime','white')]
i=0
for side in (-1,1):
    for x1 in starts:
        c1,c2=colors[i]; i+=1
        zf,face=stall(x1,side,c1,c2)
# Laternenpfähle zwischen den Ständen
for x in (-12,-20,-27,-34,-41):
    for z in (-4,4):
        f(x,G+1,z,x,G+3,z,'spruce_fence'); s(x,G+4,z,'lantern')
# Deko: Heuballen, Blumentöpfe, lose Fässer
for (x,z) in [(-19,-8),(-26,7),(-33,-6),(-40,8),(-47,-7),(-47,7)]:
    s(x,G+1,z,'hay_block')
for (x,z) in [(-19,-9),(-26,9),(-33,9),(-40,-9),(-47,-9),(-47,9),(-11,-6),(-11,6)]:
    s(x,G+1,z,'barrel[facing=up]')
# Brunnen am Westende
f(-47,G,-1,-45,G,1,'stone_bricks'); f(-47,G+1,-1,-45,G+1,1,'stone_brick_wall'); s(-46,G+1,0,'water')
s(-46,G,0,'stone_bricks')
# Eingangsschild
f(-11,G+1,-3,-11,G+3,-3,'spruce_fence'); s(-11,G+4,-3,'lantern')
s(-11,G+2,-2,'spruce_wall_sign[facing=east]{front_text:{messages:["","Marktviertel","",""]}}') if False else None
s(-10,G+2,-3,'spruce_wall_sign[facing=east]{front_text:{messages:["","Marktviertel","",""]}}')

# ---------- Raketenladen: erster Stand Nord (x -18..-14) ----------
# Schild an der Theke Richtung Straße
s(-16,G+1,-4,'spruce_wall_sign[facing=south]{front_text:{messages:["","Raketen","Smaragd/Diamant",""]}}')
f(-17,G+1,-8,-15,G+1,-6,'air')
s(-15,G+1,-9,'barrel[facing=south]')
def rk(n,fl,cur='emerald',c=1):
    return ('{buy:{id:"minecraft:%s",count:%d},sell:{id:"minecraft:firework_rocket",count:%d,components:{"minecraft:fireworks":{flight_duration:%db}}},'
            'maxUses:2147483647,rewardExp:0b,xp:0,priceMultiplier:0f,demand:0,specialPrice:0}')%(cur,c,n,fl)
offers=','.join([rk(8,1),rk(6,2),rk(4,3),rk(32,3,'diamond')])
C.append('kill @e[type=villager,tag=raketenhaendler]')
C.append('summon villager -15.5 %d -6.5 {Tags:["raketenhaendler"],NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,'
         'CustomName:"Raketenhändler",CustomNameVisible:1b,Rotation:[0f,0f],'
         'VillagerData:{profession:"minecraft:cleric",level:5,type:"minecraft:plains"},Offers:{Recipes:[%s]}}'%(G+1,offers))

# ---------- Jonas' Hütte (x 14..22, z 16..24) ----------
f(12,G,14,24,78,26,'air')
f(12,G-1,14,24,G-1,26,'dirt')
f(13,G,15,23,G,25,'grass_block')
f(14,G,16,22,G,24,'cobblestone')
f(15,G,17,21,G,23,'spruce_planks')
f(14,G+1,16,22,G+4,24,'spruce_planks')
f(15,G+1,17,21,G+4,23,'air')
for x in (14,22):
    for z in (16,24):
        f(x,G+1,z,x,G+4,z,'spruce_log')
# Fenster
for (x1,z1,x2,z2) in [(14,19,14,21),(22,19,22,21),(16,24,17,24),(19,24,20,24),(20,16,20,16),(16,16,16,16)]:
    f(x1,G+2,z1,x2,G+3,z2,'glass_pane')
# Tür (Nordseite, zum Spawn)
s(18,G+1,16,'spruce_door[facing=south,half=lower,hinge=left]')
s(18,G+2,16,'spruce_door[facing=south,half=upper,hinge=left]')
# Dach (Giebel, First entlang x)
for k in range(5):
    y=G+5+k
    f(13,y,15+k,23,y,15+k,'spruce_stairs[facing=south]')
    f(13,y,25-k,23,y,25-k,'spruce_stairs[facing=north]')
f(13,G+9,20,23,G+9,20,'spruce_planks')
for k in range(4):
    for x in (14,22):
        f(x,G+5+k,16+k,x,G+5+k,24-k,'spruce_planks')
f(14,G+5,16,22,G+5,16,'spruce_planks'); f(14,G+5,24,22,G+5,24,'spruce_planks')
# Einrichtung
s(20,G+1,22,'red_bed[part=foot,facing=south]'); s(20,G+1,23,'red_bed[part=head,facing=south]')
f(15,G+1,19,15,G+2,23,'barrel[facing=east]')
f(16,G+1,23,17,G+2,23,'barrel[facing=north]')
s(21,G+1,17,'crafting_table'); s(21,G+1,18,'furnace[facing=west]'); s(21,G+1,19,'smoker[facing=west]')
s(15,G+1,17,'barrel[facing=up]'); s(15,G+1,18,'barrel[facing=up]')
f(17,G+1,19,19,G+1,21,'red_carpet')
s(21,G+1,23,'flower_pot'); s(21,G+2,23,'potted_poppy') if False else None
s(18,G+8,20,'iron_chain[axis=y]'); s(18,G+7,20,'lantern[hanging=true]')
s(18,G+3,15,'spruce_wall_sign[facing=north]{front_text:{messages:["","Jonas\' Hütte","",""]}}')
for x in (16,20):
    s(x,G+1,15,'spruce_fence'); s(x,G+2,15,'lantern')
# Weg vom Spawnplatz
f(6,G,10,19,G,11,'dirt_path'); f(17,G,12,19,G,14,'dirt_path')
open('/tmp/markt.txt','w').write('\n'.join(C)+'\n')
print(len(C),'Befehle')
