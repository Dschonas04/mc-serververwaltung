# Create-Tierfarm (11.10.2026), x134-158 z-400..-376, Boden y95
kill @e[type=!player,x=134,y=94,z=-400,dx=24,dy=14,dz=24]
fill 133 96 -401 159 115 -375 air
fill 133 80 -401 159 94 -375 stone replace air
fill 133 80 -401 159 94 -375 stone replace water
fill 134 95 -400 158 95 -376 polished_andesite
fill 133 95 -401 159 95 -401 grass_block
fill 133 95 -375 159 95 -375 grass_block
fill 133 95 -400 133 95 -376 grass_block
fill 159 95 -400 159 95 -376 grass_block
fill 134 96 -400 158 103 -376 spruce_planks hollow
fill 135 96 -399 157 103 -377 air
fill 134 104 -400 158 104 -376 glass
fill 134 104 -400 158 104 -400 create:andesite_casing
fill 134 104 -376 158 104 -376 create:andesite_casing
fill 134 104 -400 134 104 -376 create:andesite_casing
fill 158 104 -400 158 104 -376 create:andesite_casing
fill 134 96 -400 134 103 -400 create:andesite_casing
fill 134 96 -376 134 103 -376 create:andesite_casing
fill 134 104 -400 134 104 -376 create:andesite_casing
fill 140 96 -400 140 103 -400 create:andesite_casing
fill 140 96 -376 140 103 -376 create:andesite_casing
fill 140 104 -400 140 104 -376 create:andesite_casing
fill 146 96 -400 146 103 -400 create:andesite_casing
fill 146 96 -376 146 103 -376 create:andesite_casing
fill 146 104 -400 146 104 -376 create:andesite_casing
fill 152 96 -400 152 103 -400 create:andesite_casing
fill 152 96 -376 152 103 -376 create:andesite_casing
fill 152 104 -400 152 104 -376 create:andesite_casing
fill 158 96 -400 158 103 -400 create:andesite_casing
fill 158 96 -376 158 103 -376 create:andesite_casing
fill 158 104 -400 158 104 -376 create:andesite_casing
fill 134 96 -400 134 103 -400 create:andesite_casing
fill 158 96 -400 158 103 -400 create:andesite_casing
fill 134 96 -394 134 103 -394 create:andesite_casing
fill 158 96 -394 158 103 -394 create:andesite_casing
fill 134 96 -388 134 103 -388 create:andesite_casing
fill 158 96 -388 158 103 -388 create:andesite_casing
fill 134 96 -382 134 103 -382 create:andesite_casing
fill 158 96 -382 158 103 -382 create:andesite_casing
fill 134 96 -376 134 103 -376 create:andesite_casing
fill 158 96 -376 158 103 -376 create:andesite_casing
fill 134 96 -376 158 96 -376 create:andesite_casing
fill 136 99 -376 138 101 -376 glass
fill 136 101 -400 138 102 -400 glass
fill 142 99 -376 144 101 -376 glass
fill 142 101 -400 144 102 -400 glass
fill 148 99 -376 150 101 -376 glass
fill 148 101 -400 150 102 -400 glass
fill 154 99 -376 156 101 -376 glass
fill 154 101 -400 156 102 -400 glass
fill 158 99 -398 158 101 -396 glass
fill 134 99 -398 134 101 -396 glass
fill 158 99 -392 158 101 -390 glass
fill 134 99 -392 134 101 -390 glass
fill 158 99 -386 158 101 -384 glass
fill 134 99 -386 134 101 -384 glass
fill 158 99 -380 158 101 -378 glass
fill 134 99 -380 134 101 -378 glass
fill 134 96 -389 134 97 -388 air
setblock 134 96 -389 spruce_door[facing=east,half=lower,hinge=left]
setblock 134 97 -389 spruce_door[facing=east,half=upper,hinge=left]
setblock 134 96 -388 spruce_door[facing=east,half=lower,hinge=right]
setblock 134 97 -388 spruce_door[facing=east,half=upper,hinge=right]
fill 131 95 -389 133 95 -388 polished_andesite
setblock 133 96 -390 lantern
setblock 133 96 -387 lantern
# Apfelkuehe Nordreihe
fill 136 96 -396 156 96 -396 create:andesite_casing
fill 136 97 -396 156 97 -396 create:andesite_casing
fill 136 98 -396 156 98 -396 grass_block
fill 136 96 -395 156 98 -395 create:andesite_casing
fill 136 99 -395 156 100 -395 glass
fill 136 99 -397 156 99 -397 create:andesite_casing
fill 136 100 -397 156 101 -397 create:andesite_casing
fill 136 101 -396 156 101 -395 glass
setblock 135 99 -397 create:creative_motor[facing=east]
setblock 136 99 -397 create:shaft[axis=x]
setblock 137 96 -396 hopper[facing=south]
setblock 137 97 -396 rail
setblock 137 96 -395 barrel[facing=up]
setblock 137 99 -397 create:deployer[facing=south,axis_along_first=true]{Mode:"USE",HeldItem:{id:"minecraft:shears",count:1,components:{"minecraft:unbreakable":{}}}}
summon hopper_minecart 137.5 97.1 -395.5
summon apple_cows:enchanted_golden_apple_cow 137.5 99 -395.5 {PersistenceRequired:1b,CustomName:"Verzauberte Kuh",CustomNameVisible:0b}
setblock 138 99 -397 create:shaft[axis=x]
fill 138 99 -396 138 100 -396 glass
setblock 139 96 -396 hopper[facing=south]
setblock 139 97 -396 rail
setblock 139 96 -395 barrel[facing=up]
setblock 139 99 -397 create:deployer[facing=south,axis_along_first=true]{Mode:"USE",HeldItem:{id:"minecraft:shears",count:1,components:{"minecraft:unbreakable":{}}}}
summon hopper_minecart 139.5 97.1 -395.5
summon apple_cows:enchanted_golden_apple_cow 139.5 99 -395.5 {PersistenceRequired:1b,CustomName:"Verzauberte Kuh",CustomNameVisible:0b}
setblock 140 99 -397 create:shaft[axis=x]
fill 140 99 -396 140 100 -396 glass
setblock 141 96 -396 hopper[facing=south]
setblock 141 97 -396 rail
setblock 141 96 -395 barrel[facing=up]
setblock 141 99 -397 create:deployer[facing=south,axis_along_first=true]{Mode:"USE",HeldItem:{id:"minecraft:shears",count:1,components:{"minecraft:unbreakable":{}}}}
summon hopper_minecart 141.5 97.1 -395.5
summon apple_cows:enchanted_golden_apple_cow 141.5 99 -395.5 {PersistenceRequired:1b,CustomName:"Verzauberte Kuh",CustomNameVisible:0b}
setblock 142 99 -397 create:shaft[axis=x]
fill 142 99 -396 142 100 -396 glass
setblock 143 96 -396 hopper[facing=south]
setblock 143 97 -396 rail
setblock 143 96 -395 barrel[facing=up]
setblock 143 99 -397 create:deployer[facing=south,axis_along_first=true]{Mode:"USE",HeldItem:{id:"minecraft:shears",count:1,components:{"minecraft:unbreakable":{}}}}
summon hopper_minecart 143.5 97.1 -395.5
summon apple_cows:enchanted_golden_apple_cow 143.5 99 -395.5 {PersistenceRequired:1b,CustomName:"Verzauberte Kuh",CustomNameVisible:0b}
setblock 144 99 -397 create:shaft[axis=x]
fill 144 99 -396 144 100 -396 glass
setblock 145 96 -396 hopper[facing=south]
setblock 145 97 -396 rail
setblock 145 96 -395 barrel[facing=up]
setblock 145 99 -397 create:deployer[facing=south,axis_along_first=true]{Mode:"USE",HeldItem:{id:"minecraft:shears",count:1,components:{"minecraft:unbreakable":{}}}}
summon hopper_minecart 145.5 97.1 -395.5
summon apple_cows:golden_apple_cow 145.5 99 -395.5 {PersistenceRequired:1b,CustomName:"Goldene Kuh",CustomNameVisible:0b}
setblock 146 99 -397 create:shaft[axis=x]
fill 146 99 -396 146 100 -396 glass
setblock 147 96 -396 hopper[facing=south]
setblock 147 97 -396 rail
setblock 147 96 -395 barrel[facing=up]
setblock 147 99 -397 create:deployer[facing=south,axis_along_first=true]{Mode:"USE",HeldItem:{id:"minecraft:shears",count:1,components:{"minecraft:unbreakable":{}}}}
summon hopper_minecart 147.5 97.1 -395.5
summon apple_cows:golden_apple_cow 147.5 99 -395.5 {PersistenceRequired:1b,CustomName:"Goldene Kuh",CustomNameVisible:0b}
setblock 148 99 -397 create:shaft[axis=x]
fill 148 99 -396 148 100 -396 glass
setblock 149 96 -396 hopper[facing=south]
setblock 149 97 -396 rail
setblock 149 96 -395 barrel[facing=up]
setblock 149 99 -397 create:deployer[facing=south,axis_along_first=true]{Mode:"USE",HeldItem:{id:"minecraft:shears",count:1,components:{"minecraft:unbreakable":{}}}}
summon hopper_minecart 149.5 97.1 -395.5
summon apple_cows:golden_apple_cow 149.5 99 -395.5 {PersistenceRequired:1b,CustomName:"Goldene Kuh",CustomNameVisible:0b}
setblock 150 99 -397 create:shaft[axis=x]
fill 150 99 -396 150 100 -396 glass
setblock 151 96 -396 hopper[facing=south]
setblock 151 97 -396 rail
setblock 151 96 -395 barrel[facing=up]
setblock 151 99 -397 create:deployer[facing=south,axis_along_first=true]{Mode:"USE",HeldItem:{id:"minecraft:shears",count:1,components:{"minecraft:unbreakable":{}}}}
summon hopper_minecart 151.5 97.1 -395.5
summon apple_cows:apple_cow 151.5 99 -395.5 {PersistenceRequired:1b,CustomName:"Apfel Kuh",CustomNameVisible:0b}
setblock 152 99 -397 create:shaft[axis=x]
fill 152 99 -396 152 100 -396 glass
setblock 153 96 -396 hopper[facing=south]
setblock 153 97 -396 rail
setblock 153 96 -395 barrel[facing=up]
setblock 153 99 -397 create:deployer[facing=south,axis_along_first=true]{Mode:"USE",HeldItem:{id:"minecraft:shears",count:1,components:{"minecraft:unbreakable":{}}}}
summon hopper_minecart 153.5 97.1 -395.5
summon apple_cows:apple_cow 153.5 99 -395.5 {PersistenceRequired:1b,CustomName:"Apfel Kuh",CustomNameVisible:0b}
setblock 154 99 -397 create:shaft[axis=x]
fill 154 99 -396 154 100 -396 glass
setblock 155 96 -396 hopper[facing=south]
setblock 155 97 -396 rail
setblock 155 96 -395 barrel[facing=up]
setblock 155 99 -397 create:deployer[facing=south,axis_along_first=true]{Mode:"USE",HeldItem:{id:"minecraft:shears",count:1,components:{"minecraft:unbreakable":{}}}}
summon hopper_minecart 155.5 97.1 -395.5
summon apple_cows:apple_cow 155.5 99 -395.5 {PersistenceRequired:1b,CustomName:"Apfel Kuh",CustomNameVisible:0b}
fill 156 99 -396 156 100 -396 glass
setblock 156 99 -397 create:andesite_casing
# Schafe Suedreihe
fill 136 96 -380 156 96 -380 create:andesite_casing
fill 136 97 -380 156 97 -380 create:andesite_casing
fill 136 98 -380 156 98 -380 grass_block
fill 136 96 -381 156 98 -381 create:andesite_casing
fill 136 99 -381 156 100 -381 glass
fill 136 99 -379 156 99 -379 create:andesite_casing
fill 136 100 -379 156 101 -379 create:andesite_casing
fill 136 101 -380 156 101 -381 glass
setblock 135 99 -379 create:creative_motor[facing=east]
setblock 136 99 -379 create:shaft[axis=x]
setblock 137 96 -380 hopper[facing=north]
setblock 137 97 -380 rail
setblock 137 96 -381 barrel[facing=up]
setblock 137 99 -379 create:deployer[facing=north,axis_along_first=true]{Mode:"USE",HeldItem:{id:"minecraft:shears",count:1,components:{"minecraft:unbreakable":{}}}}
summon hopper_minecart 137.5 97.1 -379.5
summon sheep 137.5 99 -379.5 {PersistenceRequired:1b,Color:0b}
setblock 138 99 -379 create:shaft[axis=x]
fill 138 99 -380 138 100 -380 glass
setblock 139 96 -380 hopper[facing=north]
setblock 139 97 -380 rail
setblock 139 96 -381 barrel[facing=up]
setblock 139 99 -379 create:deployer[facing=north,axis_along_first=true]{Mode:"USE",HeldItem:{id:"minecraft:shears",count:1,components:{"minecraft:unbreakable":{}}}}
summon hopper_minecart 139.5 97.1 -379.5
summon sheep 139.5 99 -379.5 {PersistenceRequired:1b,Color:14b}
setblock 140 99 -379 create:shaft[axis=x]
fill 140 99 -380 140 100 -380 glass
setblock 141 96 -380 hopper[facing=north]
setblock 141 97 -380 rail
setblock 141 96 -381 barrel[facing=up]
setblock 141 99 -379 create:deployer[facing=north,axis_along_first=true]{Mode:"USE",HeldItem:{id:"minecraft:shears",count:1,components:{"minecraft:unbreakable":{}}}}
summon hopper_minecart 141.5 97.1 -379.5
summon sheep 141.5 99 -379.5 {PersistenceRequired:1b,Color:1b}
setblock 142 99 -379 create:shaft[axis=x]
fill 142 99 -380 142 100 -380 glass
setblock 143 96 -380 hopper[facing=north]
setblock 143 97 -380 rail
setblock 143 96 -381 barrel[facing=up]
setblock 143 99 -379 create:deployer[facing=north,axis_along_first=true]{Mode:"USE",HeldItem:{id:"minecraft:shears",count:1,components:{"minecraft:unbreakable":{}}}}
summon hopper_minecart 143.5 97.1 -379.5
summon sheep 143.5 99 -379.5 {PersistenceRequired:1b,Color:4b}
setblock 144 99 -379 create:shaft[axis=x]
fill 144 99 -380 144 100 -380 glass
setblock 145 96 -380 hopper[facing=north]
setblock 145 97 -380 rail
setblock 145 96 -381 barrel[facing=up]
setblock 145 99 -379 create:deployer[facing=north,axis_along_first=true]{Mode:"USE",HeldItem:{id:"minecraft:shears",count:1,components:{"minecraft:unbreakable":{}}}}
summon hopper_minecart 145.5 97.1 -379.5
summon sheep 145.5 99 -379.5 {PersistenceRequired:1b,Color:5b}
setblock 146 99 -379 create:shaft[axis=x]
fill 146 99 -380 146 100 -380 glass
setblock 147 96 -380 hopper[facing=north]
setblock 147 97 -380 rail
setblock 147 96 -381 barrel[facing=up]
setblock 147 99 -379 create:deployer[facing=north,axis_along_first=true]{Mode:"USE",HeldItem:{id:"minecraft:shears",count:1,components:{"minecraft:unbreakable":{}}}}
summon hopper_minecart 147.5 97.1 -379.5
summon sheep 147.5 99 -379.5 {PersistenceRequired:1b,Color:3b}
setblock 148 99 -379 create:shaft[axis=x]
fill 148 99 -380 148 100 -380 glass
setblock 149 96 -380 hopper[facing=north]
setblock 149 97 -380 rail
setblock 149 96 -381 barrel[facing=up]
setblock 149 99 -379 create:deployer[facing=north,axis_along_first=true]{Mode:"USE",HeldItem:{id:"minecraft:shears",count:1,components:{"minecraft:unbreakable":{}}}}
summon hopper_minecart 149.5 97.1 -379.5
summon sheep 149.5 99 -379.5 {PersistenceRequired:1b,Color:11b}
setblock 150 99 -379 create:shaft[axis=x]
fill 150 99 -380 150 100 -380 glass
setblock 151 96 -380 hopper[facing=north]
setblock 151 97 -380 rail
setblock 151 96 -381 barrel[facing=up]
setblock 151 99 -379 create:deployer[facing=north,axis_along_first=true]{Mode:"USE",HeldItem:{id:"minecraft:shears",count:1,components:{"minecraft:unbreakable":{}}}}
summon hopper_minecart 151.5 97.1 -379.5
summon sheep 151.5 99 -379.5 {PersistenceRequired:1b,Color:10b}
setblock 152 99 -379 create:shaft[axis=x]
fill 152 99 -380 152 100 -380 glass
setblock 153 96 -380 hopper[facing=north]
setblock 153 97 -380 rail
setblock 153 96 -381 barrel[facing=up]
setblock 153 99 -379 create:deployer[facing=north,axis_along_first=true]{Mode:"USE",HeldItem:{id:"minecraft:shears",count:1,components:{"minecraft:unbreakable":{}}}}
summon hopper_minecart 153.5 97.1 -379.5
summon sheep 153.5 99 -379.5 {PersistenceRequired:1b,Color:6b}
setblock 154 99 -379 create:shaft[axis=x]
fill 154 99 -380 154 100 -380 glass
setblock 155 96 -380 hopper[facing=north]
setblock 155 97 -380 rail
setblock 155 96 -381 barrel[facing=up]
setblock 155 99 -379 create:deployer[facing=north,axis_along_first=true]{Mode:"USE",HeldItem:{id:"minecraft:shears",count:1,components:{"minecraft:unbreakable":{}}}}
summon hopper_minecart 155.5 97.1 -379.5
summon sheep 155.5 99 -379.5 {PersistenceRequired:1b,Color:15b}
fill 156 99 -380 156 100 -380 glass
setblock 156 99 -379 create:andesite_casing
# Huehner
fill 144 96 -390 148 96 -390 hopper[facing=west]
setblock 143 96 -390 barrel[facing=up]
fill 144 96 -389 148 96 -389 hopper[facing=west]
setblock 143 96 -389 barrel[facing=up]
fill 144 96 -388 148 96 -388 hopper[facing=west]
setblock 143 96 -388 barrel[facing=up]
fill 144 96 -387 148 96 -387 hopper[facing=west]
setblock 143 96 -387 barrel[facing=up]
fill 144 96 -386 148 96 -386 hopper[facing=west]
setblock 143 96 -386 barrel[facing=up]
fill 143 97 -391 149 97 -391 spruce_fence[east=true,west=true]
fill 143 97 -385 149 97 -385 spruce_fence[east=true,west=true]
fill 149 97 -390 149 97 -386 spruce_fence[north=true,south=true]
fill 143 97 -390 143 97 -386 spruce_fence[north=true,south=true]
setblock 143 97 -391 spruce_fence[east=true,south=true]
setblock 149 97 -391 spruce_fence[west=true,south=true]
setblock 143 97 -385 spruce_fence[east=true,north=true]
setblock 149 97 -385 spruce_fence[west=true,north=true]
setblock 146 97 -385 spruce_fence_gate[facing=south]
summon chicken 145.5 97 -389.5 {PersistenceRequired:1b}
summon chicken 147.5 97 -389.5 {PersistenceRequired:1b}
summon chicken 145.5 97 -387.5 {PersistenceRequired:1b}
summon chicken 147.5 97 -387.5 {PersistenceRequired:1b}
summon chicken 146.5 97 -388.5 {PersistenceRequired:1b}
summon chicken 146.5 97 -386.5 {PersistenceRequired:1b}
setblock 137 103 -393 lantern[hanging=true]
setblock 137 103 -388 lantern[hanging=true]
setblock 137 103 -383 lantern[hanging=true]
setblock 141 103 -393 lantern[hanging=true]
setblock 141 103 -388 lantern[hanging=true]
setblock 141 103 -383 lantern[hanging=true]
setblock 145 103 -393 lantern[hanging=true]
setblock 145 103 -388 lantern[hanging=true]
setblock 145 103 -383 lantern[hanging=true]
setblock 149 103 -393 lantern[hanging=true]
setblock 149 103 -388 lantern[hanging=true]
setblock 149 103 -383 lantern[hanging=true]
setblock 153 103 -393 lantern[hanging=true]
setblock 153 103 -388 lantern[hanging=true]
setblock 153 103 -383 lantern[hanging=true]
setblock 140 103 -396 lantern[hanging=true]
setblock 150 103 -396 lantern[hanging=true]
setblock 140 103 -380 lantern[hanging=true]
setblock 150 103 -380 lantern[hanging=true]
