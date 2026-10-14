C=[]
def f(x1,y1,z1,x2,y2,z2,b): C.append(f"fill {x1} {y1} {z1} {x2} {y2} {z2} {b}")
def s(x,y,z,b): C.append(f"setblock {x} {y} {z} {b}")
G=62; X1,X2=-25,-14; ZF,ZB=-5,-12
C.append('kill @e[type=glow_item_frame,tag=raketenbude]')
# alles neu: Bude + Fläche dahinter
f(X1-1,G+1,-19,X2+1,90,-4,'air')
f(X1-1,G-1,-19,X2+1,G-1,ZB-1,'dirt'); f(X1-1,G,-19,X2+1,G,ZB-1,'blackstone')
# Startrampe hinter der Bude
f(-24,G,-18,-14,G,-13,'polished_blackstone')
f(-23,G,-17,-15,G,-13,'polished_blackstone_bricks')
for (x,z) in ((-22,-17),(-16,-17),(-22,-13),(-16,-13),(-19,-18)):
    s(x,G,z,'magma_block')
# Boden der Bude
f(X1,G,ZB,X2,G,ZF,'gilded_blackstone')
f(X1+1,G,ZB+1,X2-1,G,ZF-1,'polished_blackstone_bricks')
for x in (-23,-19,-16): s(x,G,-8,'shroomlight')
f(X1,G,ZF+1,X2,G,ZF+1,'polished_blackstone')
# Pfosten
for x in (X1,X2,-21,-18):
    for z in (ZF,ZB):
        if x in (-21,-18) and z==ZB: continue
        f(x,G+1,z,x,G+5,z,'polished_basalt[axis=y]')
# Rückwand mit Glut-Band
f(X1+1,G+1,ZB,X2-1,G+5,ZB,'nether_bricks')
f(X1+1,G+3,ZB,X2-1,G+3,ZB,'red_nether_bricks')
f(X1+1,G+5,ZB,X2-1,G+5,ZB,'gilded_blackstone')
for x in (X1,X2):
    f(x,G+1,ZB+1,x,G+1,ZF-1,'nether_brick_fence')
# Fässer: Theke, Seiten (3 hoch), hinten
f(X1+1,G+1,ZF,X2-1,G+1,ZF,'barrel[facing=up]')
for x,face in ((X1+1,'east'),(X2-1,'west')):
    f(x,G+1,ZB+1,x,G+3,ZF-3,f'barrel[facing={face}]')
f(-22,G+1,ZB+1,-17,G+1,ZB+1,'barrel[facing=south]')
# Dach: Schwarzstein mit Goldkante, Brüstung aus Netherziegelzaun
f(X1-1,G+6,-13,X2+1,G+6,-4,'polished_blackstone_bricks')
f(X1-1,G+6,-4,X2+1,G+6,-4,'gilded_blackstone')
f(X1-1,G+7,-13,X2+1,G+7,-4,'nether_brick_fence')
f(X1,G+7,-12,X2,G+7,-5,'air')
for x in (X1-1,X2+1,-20,-19):
    s(x,G+8,-4,'soul_lantern')
# Seelenlaternen unter dem Dach
for x in (-23,-19,-16):
    s(x,G+5,-7,'soul_lantern[hanging=true]'); s(x,G+5,-10,'soul_lantern[hanging=true]')
# Banner an den Frontpfosten
for x in (X1,X2):
    s(x,G+4,ZF+1,'black_wall_banner[facing=south]{patterns:[{color:"orange",pattern:"minecraft:triangle_bottom"},{color:"red",pattern:"minecraft:flower"},{color:"yellow",pattern:"minecraft:triangles_bottom"}]}')
# Leuchtschilder
def sign(x,lines,col):
    m=','.join('"%s"'%l for l in lines)
    s(x,G+6,-3,'crimson_wall_sign[facing=south]{front_text:{color:"%s",has_glowing_text:1b,messages:[%s]}}'%(col,m))
sign(-22,['','RAKETEN','',''],'orange')
sign(-20,['64 Raketen','Flugdauer 1','für','2 Diamanten'],'yellow')
sign(-19,['64 Raketen','Flugdauer 1','für','2 Diamanten'],'yellow')
sign(-17,['','RAKETEN','',''],'orange')
for x in range(-23,-15):
    C.append('summon glow_item_frame %d %d %d {Tags:["raketenbude"],Facing:3b,Fixed:1b,Invulnerable:1b,Item:{id:"minecraft:firework_rocket",count:1}}'%(x,G+4,ZB+1))

# ---- große Nether-Rakete auf der Rampe (Rumpf 3x3, x -20..-18, z -16..-14) ----
bx1,bx2,bz1,bz2=-20,-18,-16,-14; cx,cz=-19,-15
top=G+17
f(bx1,G+2,bz1,bx2,top,bz2,'red_nether_bricks')
for y in (G+2,G+16):   # Gold-Ringe
    f(bx1,y,bz1,bx2,y,bz2,'gilded_blackstone')
f(bx1,G+9,bz1,bx2,G+9,bz2,'polished_blackstone_bricks')
# Bullaugen
for (x,z) in ((cx,bz2),(cx,bz1),(bx1,cz),(bx2,cz)):
    s(x,G+12,z,'crying_obsidian'); s(x,G+13,z,'crying_obsidian')
# Spitze
for (x,z) in ((cx,cz),(bx1,cz),(bx2,cz),(cx,bz1),(cx,bz2)):
    s(x,top+1,z,'red_nether_bricks')
s(cx,top+2,cz,'gilded_blackstone'); s(cx,top+3,cz,'nether_brick_wall'); s(cx,top+4,cz,'lightning_rod')
# Düse + Flamme
f(bx1,G+1,bz1,bx2,G+1,bz2,'polished_blackstone')
s(cx,G+1,cz,'magma_block')
# Flossen (4 Seiten, 2 breit nach außen, unten)
for dx,dz in ((1,0),(-1,0),(0,1),(0,-1)):
    for d in (2,3):
        x,z=cx+dx*d,cz+dz*d
        f(x,G+1,z,x,G+4 if d==2 else G+2,z,'crimson_hyphae')
    x,z=cx+dx*2,cz+dz*2
    s(x,G+5,z,'polished_blackstone_brick_wall')
# Startturm daneben mit Halteausleger
f(-24,G+1,-15,-24,G+18,-15,'polished_basalt[axis=y]')
for y in (G+8,G+14):
    f(-23,y,-15,-21,y,-15,'nether_brick_fence')
s(-24,G+19,-15,'soul_lantern')
f(-24,G+1,-16,-24,G+18,-16,'iron_chain[axis=y]')
# Seelenfeuer-Kessel an den Rampenecken
for (x,z) in ((-23,-17),(-15,-17)):
    s(x,G+1,z,'soul_campfire')
out=['forceload add -48 -20 26 28','sleep 6']+C+['sleep 2','forceload remove -48 -20 26 28']
open('/tmp/bude2.txt','w').write('\n'.join(out)+'\n'); print(len(out))
