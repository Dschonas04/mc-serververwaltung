import math
C=[]
def f(x1,y1,z1,x2,y2,z2,b): C.append(f"fill {x1} {y1} {z1} {x2} {y2} {z2} {b}")
def s(x,y,z,b): C.append(f"setblock {x} {y} {z} {b}")
G=62; cx,cz,R=22,0,9
# Portalplatz (Kreis um 22/0)
for x in range(cx-R,cx+R+1):
    for z in range(cz-R,cz+R+1):
        r=math.hypot(x-cx,z-cz)
        if r>R+0.5: continue
        f(x,G+1,z,x,G+12,z,'air')
        if r>R-1: b='polished_andesite'
        elif r<1.5: b='chiseled_stone_bricks'
        elif r<2.5: b='polished_andesite'
        elif z<=-3: b='polished_blackstone_bricks'
        elif z>=3: b='stellar_stone_bricks' if False else 'aerialhell:stellar_stone_bricks'
        else: b='stone_bricks'
        s(x,G,z,b)
f(cx-R,G,-1,cx-R+1,G,1,'dirt_path')  # Anschluss Ostweg
# Laternen am Rand
for a in (30,150,210,330):
    x=round(cx+(R-0.5)*math.cos(math.radians(a))); z=round(cz+(R-0.5)*math.sin(math.radians(a)))
    f(x,G+1,z,x,G+2,z,'stone_brick_wall'); s(x,G+3,z,'lantern')

def portal(zp, step_dir, frame, portal_block, border, top_mid, cap_wall, lamp, stair, sign, text, col):
    # Rahmen x 20..24, y 63..68
    f(20,G+1,zp,24,G+6,zp,frame)
    f(19,G+1,zp,19,G+7,zp,border); f(25,G+1,zp,25,G+7,zp,border); f(19,G+7,zp,25,G+7,zp,border)
    s(22,G+7,zp,top_mid)
    for x in (19,25):
        s(x,G+8,zp,cap_wall); s(x,G+9,zp,lamp)
    f(21,G+1,zp-step_dir,23,G+1,zp-step_dir,f'{stair}[facing={"north" if step_dir<0 else "south"}]')
    for x in (19,25):
        s(x,G+4,zp-step_dir,'%s[facing=%s]{front_text:{color:"%s",has_glowing_text:1b,messages:["","%s","",""]}}'%(sign,'south' if step_dir<0 else 'north',col,text))
    f(21,G+2,zp,23,G+5,zp,portal_block)

# Nether-Portal im Norden (Ebene z=-7)
zn=-7
f(18,G,-9,26,G,-6,'polished_blackstone_bricks')
for (x,z) in ((19,-6),(25,-6)): s(x,G,z,'magma_block')
for (x,z) in ((17,-8),(16,-7),(27,-8),(28,-7),(17,-6),(27,-6)):
    s(x,G,z,'crimson_nylium')
for (x,z,b) in ((17,-8,'crimson_fungus'),(16,-7,'crimson_roots'),(27,-8,'crimson_roots'),(28,-7,'crimson_fungus'),(17,-6,'weeping_vines') ):
    if b!='weeping_vines': s(x,G+1,z,b)
s(18,G+1,-7,'soul_campfire'); s(26,G+1,-7,'soul_campfire')
f(19,G+1,-8,25,G+7,-8,'polished_blackstone')
portal(zn,-1,'obsidian','nether_portal[axis=x]','polished_blackstone_bricks','crying_obsidian','polished_blackstone_brick_wall','soul_lantern','polished_blackstone_brick_stairs','crimson_wall_sign','Nether','gold')
s(19,G+7,zn,'gilded_blackstone'); s(25,G+7,zn,'gilded_blackstone')

# Aerial-Hell-Portal im Süden (Ebene z=7)
zs=7
A='aerialhell:'
f(18,G,6,26,G,9,A+'stellar_stone_bricks')
for (x,z) in ((17,8),(16,7),(27,8),(28,7),(17,6),(27,6)):
    s(x,G,z,A+'stellar_grass_block')
for (x,z,b) in ((17,8,'glowing_boletus'),(16,7,'stellar_tall_grass'),(27,8,'stellar_fern'),(28,7,'glowing_boletus')):
    s(x,G+1,z,A+b)
s(18,G+1,7,A+'crystal_block'); s(26,G+1,7,A+'crystal_block')
s(18,G+2,7,A+'potted_vibrant_sky_cactus'); s(26,G+2,7,A+'potted_vibrant_sky_cactus')
f(19,G+1,8,25,G+7,8,A+'stellar_stone')
portal(zs,1,A+'stellar_portal_frame_block',A+'aerial_hell_portal[axis=x]',A+'stellar_stone_bricks',A+'lunatic_crystal_block',A+'stellar_stone_bricks_wall',A+'crystallized_lantern',A+'stellar_stone_bricks_stairs',A+'aerial_tree_wall_sign','Aerial Hell','aqua')
s(19,G+7,zs,A+'crystal_block'); s(25,G+7,zs,A+'crystal_block')
# kleine Wolken über dem Aerial-Portal
for (x,y,z) in ((20,G+11,8),(21,G+11,8),(22,G+12,8),(23,G+11,8),(21,G+12,8),(24,G+11,9),(18,G+12,9),(19,G+12,9)):
    s(x,y,z,A+'golden_solid_ether')
out=['forceload add 10 -12 34 12','sleep 6']+C+['sleep 2','save-all flush','forceload remove 10 -12 34 12']
open('/tmp/portale.txt','w').write('\n'.join(out)+'\n'); print(len(out))
