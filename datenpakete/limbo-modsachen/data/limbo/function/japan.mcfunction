# Japanischer Garten mit Teehaus (11.10.2026), x254-279 z-335..-309, Boden y131
# ===== Penthouse entfernen =====
fill 255 130 -332 273 145 -309 air
fill 254 95 -335 279 129 -309 air replace waxed_cut_copper
fill 254 95 -335 279 129 -309 air replace waxed_oxidized_cut_copper
# ===== Gelaende aufschuetten =====
fill 254 95 -335 279 127 -309 stone replace air
fill 254 128 -335 279 130 -309 dirt replace air
fill 254 131 -335 279 131 -309 grass_block replace air
fill 254 120 -335 254 130 -309 mossy_cobblestone replace stone
fill 279 120 -335 279 130 -309 mossy_cobblestone replace stone
fill 254 120 -335 279 130 -335 mossy_cobblestone replace stone

# ===== Bambuszaun ringsum =====
fill 254 132 -335 279 132 -335 bamboo_fence[east=true,west=true]
fill 254 132 -334 254 132 -310 bamboo_fence[north=true,south=true]
fill 279 132 -334 279 132 -310 bamboo_fence[north=true,south=true]
fill 254 132 -309 259 132 -309 bamboo_fence[east=true,west=true]
fill 267 132 -309 279 132 -309 bamboo_fence[east=true,west=true]

# ===== Torii am Eingang (Sued) =====
fill 261 132 -311 261 136 -311 red_terracotta
fill 265 132 -311 265 136 -311 red_terracotta
fill 260 135 -311 266 135 -311 red_terracotta
fill 259 137 -311 267 137 -311 red_terracotta
setblock 263 136 -311 red_terracotta
fill 259 138 -311 267 138 -311 polished_blackstone_slab[type=bottom]
setblock 258 138 -311 polished_blackstone_stairs[facing=east,half=top]
setblock 268 138 -311 polished_blackstone_stairs[facing=west,half=top]

# ===== Wege =====
fill 262 131 -313 264 131 -309 gravel
fill 258 131 -313 266 131 -312 gravel
fill 265 131 -323 266 131 -314 gravel
fill 265 131 -323 273 131 -322 gravel
setblock 263 131 -310 polished_andesite
setblock 263 131 -312 polished_andesite
setblock 265 131 -315 polished_andesite
setblock 266 131 -318 polished_andesite
setblock 265 131 -321 polished_andesite
setblock 269 131 -322 polished_andesite

# ===== Koi-Teich =====
fill 255 129 -323 263 129 -314 gravel
fill 255 130 -323 263 131 -314 water
setblock 255 130 -323 dirt
setblock 255 131 -323 grass_block
setblock 263 130 -323 dirt
setblock 263 131 -323 grass_block
setblock 255 130 -314 dirt
setblock 255 131 -314 grass_block
setblock 263 130 -314 dirt
setblock 263 131 -314 grass_block
setblock 254 131 -318 mossy_cobblestone
setblock 264 131 -316 mossy_cobblestone
setblock 264 131 -320 mossy_cobblestone
setblock 256 132 -316 lily_pad
setblock 257 132 -321 lily_pad
setblock 261 132 -317 lily_pad
setblock 262 132 -321 lily_pad
setblock 256 132 -319 lily_pad
setblock 256 129 -320 sea_lantern
setblock 262 129 -316 sea_lantern

# ===== Rote Bogenbruecke ueber den Teich =====
setblock 259 132 -313 crimson_stairs[facing=north]
setblock 259 133 -314 crimson_stairs[facing=north]
fill 259 133 -322 259 133 -315 crimson_slab[type=top]
setblock 259 133 -323 crimson_stairs[facing=south]
setblock 259 132 -324 crimson_stairs[facing=south]
fill 258 134 -322 258 134 -315 crimson_fence[north=true,south=true]
fill 260 134 -322 260 134 -315 crimson_fence[north=true,south=true]

# ===== Zen-Steingarten (Nordwest) =====
fill 255 131 -334 262 131 -327 sand
fill 255 131 -334 262 131 -334 smooth_stone
fill 255 131 -327 262 131 -327 smooth_stone
fill 255 131 -333 255 131 -328 smooth_stone
fill 262 131 -333 262 131 -328 smooth_stone
setblock 257 132 -331 mossy_cobblestone
setblock 257 133 -331 andesite_wall
setblock 258 132 -331 moss_block
setblock 260 132 -329 cobblestone
setblock 260 133 -329 moss_carpet
setblock 260 132 -332 mossy_cobblestone_slab[type=bottom]

# ===== Teehaus (Nordost) =====
fill 266 131 -334 278 131 -323 polished_andesite
fill 267 132 -333 277 132 -324 spruce_planks
fill 269 132 -331 275 132 -326 bamboo_mosaic
fill 268 133 -332 276 135 -325 white_concrete hollow
fill 269 133 -331 275 135 -326 air
fill 268 133 -332 268 135 -332 stripped_dark_oak_log
fill 276 133 -332 276 135 -332 stripped_dark_oak_log
fill 268 133 -325 268 135 -325 stripped_dark_oak_log
fill 276 133 -325 276 135 -325 stripped_dark_oak_log
fill 272 133 -332 272 135 -332 stripped_dark_oak_log
fill 268 133 -328 268 135 -328 stripped_dark_oak_log
fill 276 133 -328 276 135 -328 stripped_dark_oak_log
fill 269 134 -325 271 134 -325 white_stained_glass
fill 273 134 -325 275 134 -325 white_stained_glass
fill 269 134 -332 271 134 -332 white_stained_glass
fill 273 134 -332 275 134 -332 white_stained_glass
fill 268 134 -331 268 134 -329 white_stained_glass
fill 276 134 -331 276 134 -329 white_stained_glass
setblock 272 133 -325 bamboo_door[facing=north,half=lower,hinge=left]
setblock 272 134 -325 bamboo_door[facing=north,half=upper,hinge=left]
setblock 272 132 -323 spruce_slab[type=bottom]
# Dach (Walmdach, Deepslate-Ziegel)
fill 266 136 -334 278 136 -323 deepslate_tiles
fill 266 136 -334 266 136 -323 deepslate_tile_stairs[facing=east]
fill 278 136 -334 278 136 -323 deepslate_tile_stairs[facing=west]
fill 266 136 -334 278 136 -334 deepslate_tile_stairs[facing=south]
fill 266 136 -323 278 136 -323 deepslate_tile_stairs[facing=north]
fill 267 137 -333 277 137 -324 deepslate_tiles
fill 267 137 -333 267 137 -324 deepslate_tile_stairs[facing=east]
fill 277 137 -333 277 137 -324 deepslate_tile_stairs[facing=west]
fill 267 137 -333 277 137 -333 deepslate_tile_stairs[facing=south]
fill 267 137 -324 277 137 -324 deepslate_tile_stairs[facing=north]
fill 268 138 -332 276 138 -325 deepslate_tiles
fill 268 138 -332 268 138 -325 deepslate_tile_stairs[facing=east]
fill 276 138 -332 276 138 -325 deepslate_tile_stairs[facing=west]
fill 268 138 -332 276 138 -332 deepslate_tile_stairs[facing=south]
fill 268 138 -325 276 138 -325 deepslate_tile_stairs[facing=north]
fill 269 139 -331 275 139 -326 deepslate_tiles
fill 269 139 -331 269 139 -326 deepslate_tile_stairs[facing=east]
fill 275 139 -331 275 139 -326 deepslate_tile_stairs[facing=west]
fill 269 139 -331 275 139 -331 deepslate_tile_stairs[facing=south]
fill 269 139 -326 275 139 -326 deepslate_tile_stairs[facing=north]
fill 270 140 -330 274 140 -327 deepslate_tiles
fill 270 140 -330 274 140 -330 deepslate_tile_stairs[facing=south]
fill 270 140 -327 274 140 -327 deepslate_tile_stairs[facing=north]
fill 271 141 -329 273 141 -328 deepslate_tile_slab[type=bottom]
setblock 270 141 -329 deepslate_tile_stairs[facing=east]
setblock 270 141 -328 deepslate_tile_stairs[facing=east]
setblock 274 141 -329 deepslate_tile_stairs[facing=west]
setblock 274 141 -328 deepslate_tile_stairs[facing=west]
# Laternen unter dem Dachvorsprung
setblock 267 135 -324 lantern[hanging=true]
setblock 277 135 -324 lantern[hanging=true]
setblock 267 135 -333 lantern[hanging=true]
setblock 277 135 -333 lantern[hanging=true]
# Einrichtung
setblock 272 135 -328 lantern[hanging=true]
fill 271 133 -329 273 133 -328 spruce_slab[type=top]
setblock 270 133 -329 red_carpet
setblock 270 133 -328 red_carpet
setblock 274 133 -329 red_carpet
setblock 274 133 -328 red_carpet
setblock 269 133 -331 light_gray_bed[facing=west,part=head]
setblock 270 133 -331 light_gray_bed[facing=west,part=foot]
setblock 275 133 -331 chest[facing=west]
setblock 275 133 -330 barrel[facing=west]
setblock 275 133 -326 potted_bamboo
setblock 269 133 -326 potted_cherry_sapling
setblock 275 133 -329 crafting_table

# ===== Steinlaternen (Toro) =====
setblock 264 132 -324 stone_brick_wall
setblock 264 133 -324 lantern
setblock 264 134 -324 stone_brick_slab[type=bottom]
setblock 257 132 -312 stone_brick_wall
setblock 257 133 -312 lantern
setblock 257 134 -312 stone_brick_slab[type=bottom]
setblock 268 132 -321 stone_brick_wall
setblock 268 133 -321 lantern
setblock 268 134 -321 stone_brick_slab[type=bottom]
setblock 261 132 -326 stone_brick_wall
setblock 261 133 -326 lantern
setblock 261 134 -326 stone_brick_slab[type=bottom]

# ===== Bambushain (Osten) =====
fill 278 132 -320 278 138 -320 bamboo
fill 277 132 -318 277 139 -318 bamboo
fill 278 132 -316 278 137 -316 bamboo
fill 277 132 -313 277 138 -313 bamboo
fill 278 132 -311 278 139 -311 bamboo
fill 276 132 -315 276 136 -315 bamboo

# ===== Kirschbaeume + Bluetenteppich =====
place feature minecraft:cherry 271 132 -314
place feature minecraft:cherry 256 132 -310
place feature minecraft:cherry 256 132 -326
fill 269 132 -316 274 132 -312 pink_petals[flower_amount=4] replace air
fill 255 132 -311 258 132 -310 pink_petals[flower_amount=3] replace air
setblock 266 132 -310 potted_azalea_bush

# ===== Koi =====
summon tropical_fish 257 130 -317 {PersistenceRequired:1b,Variant:65536}
summon tropical_fish 260 130 -320 {PersistenceRequired:1b,Variant:67699456}
summon tropical_fish 262 130 -315 {PersistenceRequired:1b,Variant:917504}
summon tropical_fish 256 130 -321 {PersistenceRequired:1b,Variant:65536}
summon tropical_fish 261 130 -322 {PersistenceRequired:1b,Variant:117441025}
