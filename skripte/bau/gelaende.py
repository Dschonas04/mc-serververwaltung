import random, math
random.seed(4711)
C=[]
def f(x1,y1,z1,x2,y2,z2,b,rep=''): C.append(f"fill {x1} {y1} {z1} {x2} {y2} {z2} {b}"+(f" replace {rep}" if rep else ''))
def s(x,y,z,b): C.append(f"setblock {x} {y} {z} {b}")
G=62
# 1) Atom-Spuren in ±96 entfernen
for x in range(-96,96,16):
    for z in range(-96,96,16):
        for b,r in (('grass_block','tnt_arsenal:irradiated_earth'),('water','tnt_arsenal:contaminated_water'),('air','tnt_arsenal:fallout'),('air','tnt_arsenal:trinitite')):
            f(x,55,z,x+15,110,z+15,b,r)
# 2) Pfützen-Sumpf nördlich vom Spawn zuschütten (nur y 62, außerhalb Marktviertel)
for (x1,z1,x2,z2) in ((-54,-72,30,-20),(-10,-19,30,0)):
    f(x1,G,z1,x2,G,z2,'grass_block','water')
    f(x1,G+1,z1,x2,G+1,z2,'air','water')
# 3) Teich
cx,cz,rx,rz=0,-41,16,11
for x in range(cx-rx-2,cx+rx+3):
    for z in range(cz-rz-2,cz+rz+3):
        # leicht unregelmäßiger Rand
        ang=math.atan2(z-cz,x-cx); wob=1+0.08*math.sin(3*ang)+0.05*math.cos(5*ang)
        d=math.hypot((x-cx)/rx,(z-cz)/rz)/wob
        if d<=1:
            depth=1 if d>0.75 else 2 if d>0.45 else 3
            f(x,G-depth+1,z,x,G,z,'water')
            f(x,G+1,z,x,G+3,z,'air')
            bot=random.choice(['sand','sand','gravel','clay']) if depth>1 else 'sand'
            s(x,G-depth,z,bot)
            if depth>=2 and random.random()<0.25: s(x,G-depth+1,z,'seagrass')
            if d<0.9 and depth<=2 and random.random()<0.06: s(x,G+1,z,'lily_pad')
        elif d<=1.12:
            s(x,G,z,random.choice(['sand','sand','gravel','grass_block','grass_block','coarse_dirt']))
            if random.random()<0.10: s(x,G+1,z,'sugar_cane'); s(x,G+2,z,'sugar_cane') if random.random()<0.6 else None
# 4) Wege mit Laternen
def path(x1,z1,x2,z2):
    f(x1,G,z1,x2,G,z2,'dirt_path'); f(x1,G+1,z1,x2,G+3,z2,'air')
def lamp(x,z):
    s(x,G,z,'cobblestone'); f(x,G+1,z,x,G+2,z,'spruce_fence'); s(x,G+3,z,'lantern')
path(-1,-29,1,-10)
for i,z in enumerate(range(-13,-29,-7)): lamp(-3 if i%2 else 3,z)
# Steg in den Teich
f(-1,G,-36,1,G,-30,'spruce_planks'); f(-2,G+1,-36,-2,G+1,-31,'spruce_fence'); f(2,G+1,-36,2,G+1,-31,'spruce_fence')
s(-2,G+2,-36,'lantern'); s(2,G+2,-36,'lantern')
f(-2,G-3,-36,-2,G-1,-36,'spruce_fence'); f(2,G-3,-36,2,G-1,-36,'spruce_fence')
s(-1,G+1,-35,'spruce_stairs[facing=south]'); s(1,G+1,-35,'spruce_stairs[facing=south]')
# Osten
path(10,-1,28,1)
for i,x in enumerate(range(13,29,7)): lamp(x,-3 if i%2 else 3)
# Süden mit rundem Blumengarten
path(-1,10,1,43)
for i,z in enumerate(range(14,43,7)): lamp(-3 if i%2 else 3,z)
gx,gz=0,50
for x in range(gx-8,gx+9):
    for z in range(gz-8,gz+9):
        r=math.hypot(x-gx,z-gz)
        if r<=8.5: f(x,G+1,z,x,G+4,z,'air')
        if 4.5<=r<6.2: s(x,G,z,'dirt_path')
        elif r<4.5 and r>=1.5: s(x,G,z,'grass_block'); s(x,G+1,z,random.choice(['poppy','dandelion','cornflower','oxeye_daisy','allium','azure_bluet','red_tulip','orange_tulip','white_tulip','pink_tulip','lily_of_the_valley']))
        elif r<1.5: s(x,G,z,'moss_block')
for (x,z,fc) in ((gx,gz-7,'north'),(gx,gz+7,'south'),(gx-7,gz,'west'),(gx+7,gz,'east')):
    s(x,G+1,z,f'spruce_stairs[facing={fc}]')
for (x,z) in ((gx-5,gz-5),(gx+5,gz-5),(gx-5,gz+5),(gx+5,gz+5)): lamp(x,z)
C.append(f'place feature minecraft:fancy_oak {gx} {G+1} {gz}')
# 5) Bäume
trees=[(-40,-30),(-34,-46),(-44,-56),(-26,-62),(-22,-34),(-12,-60),(12,-60),(24,-30),(26,-48),(20,-18),(14,-12),
       (-40,34),(-30,48),(-18,38),(-10,58),(14,46),(22,36),(-46,58),(24,58),(8,30),(-40,20),(-28,22),(-16,20),(-52,-20),(-52,0)]
kinds=['fancy_oak','oak','birch','fancy_oak','oak_bees_005','birch_bees_005']
for (x,z) in trees:
    C.append(f'place feature minecraft:{random.choice(kinds)} {x} {G+1} {z}')
# 6) Blumen-Flecken
for _ in range(40):
    x=random.randint(-54,28); z=random.randint(-70,62)
    if -48<=x<=-10 and -19<=z<=12: continue
    if -12<=x<=12 and -12<=z<=12: continue
    if 11<=x<=25 and 13<=z<=27: continue
    if math.hypot((x-cx)/rx,(z-cz)/rz)<1.3: continue
    if abs(x)<=4 or abs(z)<=4: continue
    C.append(f'place feature minecraft:{random.choice(["flower_default","flower_plain","flower_meadow","flower_flower_forest"])} {x} {G+1} {z}')
out=['forceload add -96 -96 95 95','sleep 15']+C+['sleep 3','save-all flush','forceload remove -96 -96 95 95']
open('/tmp/gelaende.txt','w').write('\n'.join(out)+'\n'); print(len(out))
