# Modernes Haus fuer Dschonas04 (11.10.2026), Bauplatz x236-259 z-299..-276, Boden y131
fill 236 132 -299 259 150 -276 air
# Terrasse/Grundplatte
fill 237 131 -297 258 131 -277 smooth_stone
fill 236 131 -298 259 131 -298 polished_deepslate
fill 236 131 -276 259 131 -276 polished_deepslate
fill 236 131 -297 236 131 -277 polished_deepslate
fill 259 131 -297 259 131 -277 polished_deepslate
# Weg zu dir
fill 259 131 -290 263 131 -288 polished_andesite

# ===== Erdgeschoss: weisser Kubus x240-255 z-294..-284 =====
fill 240 132 -294 255 137 -284 white_concrete hollow
fill 241 132 -293 254 132 -285 dark_oak_planks
fill 240 132 -294 240 137 -294 polished_deepslate
fill 255 132 -294 255 137 -294 polished_deepslate
fill 240 132 -284 240 137 -284 polished_deepslate
fill 255 132 -284 255 137 -284 polished_deepslate
# Glasfront zum Pool (Sueden)
fill 241 133 -284 254 136 -284 glass
# Ostseite Fenster + Eingang
fill 255 133 -293 255 135 -291 glass
fill 255 133 -287 255 135 -285 glass
setblock 255 133 -289 dark_oak_door[facing=west,half=lower,hinge=left]
setblock 255 134 -289 dark_oak_door[facing=west,half=upper,hinge=left]
setblock 256 132 -289 smooth_quartz_slab[type=bottom]
setblock 256 134 -290 lantern[hanging=false]
# Nordseite Fensterband
fill 241 135 -294 254 135 -294 glass
# Westseite Fenster
fill 240 133 -292 240 135 -286 glass

# ===== Obergeschoss: dunkler Holzkubus, kragt nach Osten aus =====
fill 244 137 -295 258 141 -287 dark_oak_planks hollow
fill 245 137 -294 257 137 -288 dark_oak_planks
fill 244 137 -295 258 137 -287 polished_deepslate hollow
# Panoramaglas nach Osten
fill 258 138 -294 258 140 -288 glass
# Fensterband Sued + Nord
fill 245 138 -287 257 139 -287 glass
fill 246 139 -295 256 139 -295 glass
# Flachdach mit Ueberstand
fill 243 141 -296 259 141 -286 smooth_stone_slab[type=bottom]
fill 244 141 -295 258 141 -287 smooth_stone
# Durchgang zur Dachterrasse
fill 244 138 -291 244 139 -290 air

# ===== Dachterrasse auf dem Erdgeschoss =====
fill 241 137 -293 243 137 -285 spruce_planks
fill 244 137 -286 254 137 -285 spruce_planks
fill 240 138 -294 240 138 -284 glass
fill 241 138 -284 255 138 -284 glass
fill 255 138 -286 255 138 -285 glass
fill 241 138 -294 243 138 -294 glass
setblock 241 138 -293 potted_azalea_bush
setblock 241 138 -285 potted_flowering_azalea_bush
setblock 254 138 -285 potted_fern

# ===== Treppe nach oben (Nordwand, steigt nach Osten) =====
setblock 246 133 -293 dark_oak_stairs[facing=east]
setblock 247 134 -293 dark_oak_stairs[facing=east]
setblock 248 135 -293 dark_oak_stairs[facing=east]
setblock 249 136 -293 dark_oak_stairs[facing=east]
fill 246 137 -293 249 137 -293 air
fill 246 138 -292 249 138 -292 glass

# ===== Licht =====
setblock 243 137 -288 ochre_froglight
setblock 251 137 -287 ochre_froglight
setblock 252 137 -291 ochre_froglight
setblock 248 141 -291 ochre_froglight
setblock 254 141 -291 ochre_froglight
setblock 257 137 -291 ochre_froglight

# ===== Einrichtung Erdgeschoss =====
fill 241 133 -292 241 134 -286 bookshelf
fill 244 133 -290 248 133 -286 light_gray_carpet
setblock 245 133 -291 dark_oak_stairs[facing=north]
setblock 246 133 -291 dark_oak_stairs[facing=north]
setblock 247 133 -291 dark_oak_stairs[facing=north]
setblock 246 133 -288 dark_oak_slab[type=top]
fill 251 133 -293 254 133 -293 smooth_stone
setblock 251 133 -293 smoker[facing=south]
setblock 252 133 -293 crafting_table
setblock 253 133 -293 barrel[facing=up]
setblock 254 133 -293 furnace[facing=south]
setblock 253 134 -293 potted_red_tulip
setblock 242 133 -285 potted_bamboo
setblock 254 133 -285 potted_fern

# ===== Einrichtung Obergeschoss =====
setblock 256 138 -292 white_bed[facing=east,part=head]
setblock 255 138 -292 white_bed[facing=east,part=foot]
setblock 256 138 -290 white_bed[facing=east,part=head]
setblock 255 138 -290 white_bed[facing=east,part=foot]
fill 252 138 -293 257 138 -289 gray_carpet replace air
setblock 245 138 -294 enchanting_table
fill 245 138 -293 245 139 -292 bookshelf
setblock 250 138 -294 chest[facing=south]
setblock 251 138 -294 chest[facing=south]
setblock 257 138 -288 potted_cactus

# ===== Pool vor der Glasfront =====
fill 241 128 -283 254 131 -278 smooth_quartz
fill 242 129 -282 253 131 -279 water
setblock 241 130 -281 sea_lantern
setblock 254 130 -280 sea_lantern
setblock 247 128 -282 sea_lantern
setblock 248 128 -279 sea_lantern
fill 242 132 -277 253 132 -277 dark_oak_slab[type=bottom]

# ===== Garten =====
fill 237 132 -297 237 132 -277 azalea_leaves[persistent=true]
fill 238 132 -297 258 132 -297 azalea_leaves[persistent=true]
fill 238 132 -277 240 132 -277 azalea_leaves[persistent=true]
setblock 256 132 -278 lantern
setblock 238 132 -278 lantern
setblock 258 132 -296 lantern
