# Erweiterung japanischer Garten nach Westen bis x200 (11.10.2026), x200-253 z-346..-309
# ===== Gelaende =====
fill 200 95 -346 253 127 -309 stone replace air
fill 200 128 -346 253 130 -309 dirt replace air
fill 200 131 -346 253 131 -309 grass_block replace air
fill 200 120 -346 200 130 -309 mossy_cobblestone replace stone
fill 200 120 -346 253 130 -346 mossy_cobblestone replace stone
fill 200 120 -309 253 130 -309 mossy_cobblestone replace stone
fill 254 120 -346 279 130 -336 stone replace air
fill 254 131 -346 279 131 -336 grass_block replace air

# ===== Zaun versetzen =====
fill 254 132 -334 254 132 -310 air replace bamboo_fence
fill 254 132 -335 260 132 -335 air replace bamboo_fence
fill 200 132 -346 279 132 -346 bamboo_fence[east=true,west=true]
fill 279 132 -345 279 132 -336 bamboo_fence[north=true,south=true]
fill 200 132 -345 200 132 -310 bamboo_fence[north=true,south=true]
fill 200 132 -309 245 132 -309 bamboo_fence[east=true,west=true]
fill 251 132 -309 253 132 -309 bamboo_fence[east=true,west=true]
fill 261 132 -335 278 132 -335 air replace bamboo_fence

# ===== Wege =====
fill 205 131 -314 257 131 -312 gravel
fill 205 131 -343 207 131 -315 gravel
fill 208 131 -336 212 131 -335 gravel
fill 246 131 -311 250 131 -309 gravel
setblock 210 131 -313 polished_andesite
setblock 220 131 -313 polished_andesite
setblock 230 131 -313 polished_andesite
setblock 240 131 -313 polished_andesite
setblock 250 131 -313 polished_andesite
setblock 206 131 -320 polished_andesite
setblock 206 131 -328 polished_andesite

# ===== Grosser Teich mit Insel =====
fill 215 129 -330 235 129 -318 gravel
fill 215 130 -330 235 131 -318 water
fill 215 130 -330 216 131 -330 dirt
fill 215 131 -330 216 131 -330 grass_block
fill 234 130 -330 235 131 -330 dirt
fill 234 131 -330 235 131 -330 grass_block
fill 215 130 -318 215 131 -318 dirt
setblock 215 131 -318 grass_block
fill 235 130 -318 235 131 -318 dirt
setblock 235 131 -318 grass_block
fill 222 129 -327 227 130 -322 dirt
fill 222 131 -327 227 131 -322 grass_block
fill 224 131 -321 224 131 -318 crimson_planks
fill 223 132 -321 223 132 -318 crimson_fence[north=true,south=true]
fill 225 132 -321 225 132 -318 crimson_fence[north=true,south=true]
setblock 224 131 -317 crimson_slab[type=top]
setblock 216 129 -324 sea_lantern
setblock 232 129 -321 sea_lantern
setblock 230 129 -328 sea_lantern
setblock 218 132 -321 lily_pad
setblock 219 132 -328 lily_pad
setblock 230 132 -325 lily_pad
setblock 232 132 -320 lily_pad
setblock 217 132 -326 lily_pad
setblock 214 131 -324 mossy_cobblestone
setblock 214 132 -324 mossy_cobblestone_slab[type=bottom]
setblock 236 131 -326 mossy_cobblestone
setblock 220 131 -331 mossy_cobblestone
# Bachlauf zum alten Teich
fill 236 130 -319 254 131 -318 water
fill 236 129 -319 254 129 -318 gravel
fill 244 131 -320 244 131 -317 crimson_planks
fill 243 132 -319 243 132 -318 crimson_fence[north=true,south=true]
fill 245 132 -319 245 132 -318 crimson_fence[north=true,south=true]

# ===== Pagode (neben dir, x209-215 z-344..-338) =====
fill 208 131 -345 216 131 -337 stone_bricks
fill 209 132 -344 215 134 -338 white_concrete hollow
fill 210 132 -343 214 134 -339 air
fill 210 132 -343 214 132 -339 bamboo_mosaic
fill 209 132 -344 209 134 -344 red_terracotta
fill 215 132 -344 215 134 -344 red_terracotta
fill 209 132 -338 209 134 -338 red_terracotta
fill 215 132 -338 215 134 -338 red_terracotta
fill 212 132 -344 212 134 -344 red_terracotta
fill 209 132 -341 209 134 -341 red_terracotta
fill 215 132 -341 215 134 -341 red_terracotta
fill 210 133 -344 211 133 -344 white_stained_glass
fill 213 133 -344 214 133 -344 white_stained_glass
fill 209 133 -343 209 133 -342 white_stained_glass
fill 215 133 -343 215 133 -342 white_stained_glass
setblock 212 132 -338 bamboo_door[facing=north,half=lower,hinge=left]
setblock 212 133 -338 bamboo_door[facing=north,half=upper,hinge=left]
setblock 212 134 -341 lantern[hanging=true]
setblock 210 132 -343 potted_bamboo
setblock 214 132 -343 potted_cherry_sapling
setblock 212 132 -342 red_carpet
# Dach 1
fill 207 135 -346 217 135 -336 deepslate_tiles
fill 207 135 -346 207 135 -336 deepslate_tile_stairs[facing=east]
fill 217 135 -346 217 135 -336 deepslate_tile_stairs[facing=west]
fill 207 135 -346 217 135 -346 deepslate_tile_stairs[facing=south]
fill 207 135 -336 217 135 -336 deepslate_tile_stairs[facing=north]
setblock 208 134 -337 lantern[hanging=true]
setblock 216 134 -337 lantern[hanging=true]
setblock 208 134 -345 lantern[hanging=true]
setblock 216 134 -345 lantern[hanging=true]
# Stockwerk 2
fill 210 136 -343 214 138 -339 white_concrete
fill 210 136 -343 210 138 -343 red_terracotta
fill 214 136 -343 214 138 -343 red_terracotta
fill 210 136 -339 210 138 -339 red_terracotta
fill 214 136 -339 214 138 -339 red_terracotta
fill 211 137 -339 213 137 -339 white_stained_glass
fill 211 137 -343 213 137 -343 white_stained_glass
fill 208 139 -345 216 139 -337 deepslate_tiles
fill 208 139 -345 208 139 -337 deepslate_tile_stairs[facing=east]
fill 216 139 -345 216 139 -337 deepslate_tile_stairs[facing=west]
fill 208 139 -345 216 139 -345 deepslate_tile_stairs[facing=south]
fill 208 139 -337 216 139 -337 deepslate_tile_stairs[facing=north]
# Stockwerk 3
fill 211 140 -342 213 142 -340 white_concrete
fill 211 140 -342 211 142 -342 red_terracotta
fill 213 140 -342 213 142 -342 red_terracotta
fill 211 140 -340 211 142 -340 red_terracotta
fill 213 140 -340 213 142 -340 red_terracotta
setblock 212 141 -340 white_stained_glass
setblock 212 141 -342 white_stained_glass
fill 209 143 -344 215 143 -338 deepslate_tiles
fill 209 143 -344 209 143 -338 deepslate_tile_stairs[facing=east]
fill 215 143 -344 215 143 -338 deepslate_tile_stairs[facing=west]
fill 209 143 -344 215 143 -344 deepslate_tile_stairs[facing=south]
fill 209 143 -338 215 143 -338 deepslate_tile_stairs[facing=north]
fill 210 144 -343 214 144 -339 deepslate_tiles
fill 210 144 -343 210 144 -339 deepslate_tile_stairs[facing=east]
fill 214 144 -343 214 144 -339 deepslate_tile_stairs[facing=west]
fill 210 144 -343 214 144 -343 deepslate_tile_stairs[facing=south]
fill 210 144 -339 214 144 -339 deepslate_tile_stairs[facing=north]
fill 211 145 -342 213 145 -340 deepslate_tile_slab[type=bottom]
setblock 212 145 -341 polished_blackstone_wall
setblock 212 146 -341 polished_blackstone_wall
setblock 212 147 -341 gold_block
setblock 212 148 -341 lightning_rod

# ===== Steinlaternen =====
setblock 208 132 -316 stone_brick_wall
setblock 208 133 -316 lantern
setblock 208 134 -316 stone_brick_slab[type=bottom]
setblock 225 132 -315 stone_brick_wall
setblock 225 133 -315 lantern
setblock 225 134 -315 stone_brick_slab[type=bottom]
setblock 242 132 -315 stone_brick_wall
setblock 242 133 -315 lantern
setblock 242 134 -315 stone_brick_slab[type=bottom]
setblock 208 132 -330 stone_brick_wall
setblock 208 133 -330 lantern
setblock 208 134 -330 stone_brick_slab[type=bottom]
setblock 226 132 -326 stone_brick_wall
setblock 226 133 -326 lantern
setblock 226 134 -326 stone_brick_slab[type=bottom]
setblock 204 132 -342 stone_brick_wall
setblock 204 133 -342 lantern
setblock 204 134 -342 stone_brick_slab[type=bottom]

# ===== Bambushain (Westen) =====
fill 201 132 -330 201 138 -330 bamboo
fill 202 132 -327 202 139 -327 bamboo
fill 201 132 -324 201 137 -324 bamboo
fill 202 132 -321 202 138 -321 bamboo
fill 201 132 -318 201 139 -318 bamboo
fill 203 132 -325 203 136 -325 bamboo
fill 201 132 -315 201 137 -315 bamboo

# ===== Zen-Garten 2 (Nordost der Erweiterung) =====
fill 238 131 -344 252 131 -334 sand
fill 238 131 -344 252 131 -344 smooth_stone
fill 238 131 -334 252 131 -334 smooth_stone
fill 238 131 -343 238 131 -335 smooth_stone
fill 252 131 -343 252 131 -335 smooth_stone
setblock 242 132 -340 mossy_cobblestone
setblock 242 133 -340 andesite_wall
setblock 243 132 -340 moss_block
setblock 247 132 -338 cobblestone
setblock 247 133 -338 moss_carpet
setblock 249 132 -342 mossy_cobblestone_slab[type=bottom]

# ===== Baeume =====
place feature minecraft:cherry 219 132 -337
place feature minecraft:cherry 230 132 -339
place feature minecraft:cherry 237 132 -326
place feature minecraft:cherry 212 132 -322
place feature minecraft:cherry 224 132 -324
place feature minecraft:azalea_tree 232 132 -313
place feature minecraft:azalea_tree 216 132 -312
place feature minecraft:cherry 247 132 -324
fill 216 132 -339 222 132 -335 pink_petals[flower_amount=4] replace air
fill 227 132 -341 233 132 -337 pink_petals[flower_amount=3] replace air
fill 209 132 -324 214 132 -320 pink_petals[flower_amount=4] replace air
fill 244 132 -327 250 132 -322 pink_petals[flower_amount=2] replace air

# ===== Koi =====
summon tropical_fish 220 130 -320 {PersistenceRequired:1b,Variant:65536}
summon tropical_fish 230 130 -322 {PersistenceRequired:1b,Variant:67699456}
summon tropical_fish 218 130 -328 {PersistenceRequired:1b,Variant:917504}
summon tropical_fish 232 130 -328 {PersistenceRequired:1b,Variant:117441025}
summon tropical_fish 228 130 -319 {PersistenceRequired:1b,Variant:65536}
