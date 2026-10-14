# Glas-Penthouse auf Stelzen fuer Dschonas04 (11.10.2026), x256-272 z-331..-315, Boden y131 ueber dem Tal
fill 255 131 -332 273 145 -314 air
# ===== Stelzen (nur Luft wird ersetzt) =====
fill 257 95 -316 257 129 -316 waxed_cut_copper replace air
fill 271 95 -316 271 129 -316 waxed_cut_copper replace air
fill 257 95 -330 257 129 -330 waxed_cut_copper replace air
fill 271 95 -330 271 129 -330 waxed_cut_copper replace air
fill 264 95 -316 264 129 -316 waxed_cut_copper replace air
fill 264 95 -330 264 129 -330 waxed_cut_copper replace air
fill 257 95 -323 257 129 -323 waxed_cut_copper replace air
fill 271 95 -323 271 129 -323 waxed_cut_copper replace air
fill 264 95 -323 264 129 -323 waxed_oxidized_cut_copper replace air
# ===== Bodenplatte =====
fill 256 130 -331 272 130 -315 white_concrete
setblock 260 130 -319 sea_lantern
setblock 268 130 -319 sea_lantern
setblock 260 130 -327 sea_lantern
setblock 268 130 -327 sea_lantern
setblock 264 130 -323 sea_lantern
fill 256 131 -331 272 131 -315 waxed_cut_copper
# ===== Glaskubus =====
fill 258 131 -329 270 136 -317 glass hollow
fill 259 131 -328 269 131 -318 smooth_quartz
fill 259 136 -328 269 136 -318 air
fill 258 131 -329 270 131 -317 waxed_cut_copper hollow
fill 258 132 -329 258 136 -329 waxed_cut_copper
fill 270 132 -329 270 136 -329 waxed_cut_copper
fill 258 132 -317 258 136 -317 waxed_cut_copper
fill 270 132 -317 270 136 -317 waxed_cut_copper
fill 264 132 -329 264 136 -329 waxed_cut_copper
fill 264 132 -317 264 136 -317 waxed_cut_copper
fill 258 132 -323 258 136 -323 waxed_cut_copper
fill 270 132 -323 270 136 -323 waxed_cut_copper
# Dach mit Ueberstand
fill 256 137 -331 272 137 -315 waxed_cut_copper_slab[type=bottom]
fill 257 137 -330 271 137 -316 waxed_cut_copper
setblock 261 137 -320 pearlescent_froglight
setblock 267 137 -320 pearlescent_froglight
setblock 261 137 -326 pearlescent_froglight
setblock 267 137 -326 pearlescent_froglight
# Eingang (Sued)
setblock 263 132 -317 waxed_copper_door[facing=north,half=lower,hinge=left]
setblock 263 133 -317 waxed_copper_door[facing=north,half=upper,hinge=left]
# ===== Umlaufende Terrasse mit Kupfergitter =====
fill 256 132 -331 272 132 -331 waxed_copper_grate
fill 256 132 -315 261 132 -315 waxed_copper_grate
fill 265 132 -315 272 132 -315 waxed_copper_grate
fill 256 132 -330 256 132 -316 waxed_copper_grate
fill 272 132 -330 272 132 -316 waxed_copper_grate
setblock 256 133 -331 end_rod
setblock 272 133 -331 end_rod
setblock 256 133 -315 end_rod
setblock 272 133 -315 end_rod
# ===== Bruecke zur Plattform =====
fill 262 131 -314 264 131 -309 waxed_cut_copper
fill 262 130 -314 264 130 -309 waxed_cut_copper_slab[type=top]
fill 261 132 -314 261 132 -309 waxed_copper_grate
fill 265 132 -314 265 132 -309 waxed_copper_grate
setblock 261 133 -309 end_rod
setblock 265 133 -309 end_rod
setblock 261 133 -314 end_rod
setblock 265 133 -314 end_rod
# ===== Treppe aufs Dach (Ostseite, steigt nach Norden) =====
setblock 269 132 -320 waxed_cut_copper_stairs[facing=north]
setblock 269 133 -321 waxed_cut_copper_stairs[facing=north]
setblock 269 134 -322 waxed_cut_copper_stairs[facing=north]
setblock 269 135 -323 waxed_cut_copper_stairs[facing=north]
setblock 269 136 -324 waxed_cut_copper_stairs[facing=north]
fill 269 137 -324 269 137 -320 air
fill 268 138 -325 268 138 -320 waxed_copper_grate
fill 268 132 -324 268 132 -321 waxed_copper_grate
# ===== Dachlounge: Glas-Observatorium + Gitter =====
fill 257 138 -330 271 138 -330 waxed_copper_grate
fill 257 138 -316 271 138 -316 waxed_copper_grate
fill 257 138 -329 257 138 -317 waxed_copper_grate
fill 271 138 -329 271 138 -317 waxed_copper_grate
fill 260 138 -327 266 141 -321 glass hollow
fill 260 141 -327 266 141 -321 waxed_oxidized_cut_copper
fill 260 138 -327 260 141 -327 waxed_cut_copper
fill 266 138 -327 266 141 -327 waxed_cut_copper
fill 260 138 -321 260 141 -321 waxed_cut_copper
fill 266 138 -321 266 141 -321 waxed_cut_copper
fill 262 138 -321 264 139 -321 air
setblock 263 141 -324 pearlescent_froglight
fill 261 138 -326 265 138 -322 light_blue_carpet
setblock 261 138 -326 quartz_stairs[facing=north]
setblock 262 138 -326 quartz_stairs[facing=north]
setblock 263 138 -326 quartz_stairs[facing=north]
setblock 264 138 -326 quartz_stairs[facing=north]
setblock 265 138 -326 quartz_stairs[facing=north]
setblock 258 138 -328 potted_flowering_azalea_bush
setblock 270 138 -328 potted_azalea_bush
# ===== Einrichtung =====
fill 259 132 -328 263 132 -324 white_carpet
setblock 259 132 -326 quartz_stairs[facing=west]
setblock 259 132 -325 quartz_stairs[facing=west]
setblock 260 132 -328 quartz_stairs[facing=north]
setblock 261 132 -328 quartz_stairs[facing=north]
setblock 261 132 -326 smooth_quartz_slab[type=top]
setblock 268 132 -328 white_bed[facing=north,part=head]
setblock 268 132 -327 white_bed[facing=north,part=foot]
setblock 266 132 -328 white_bed[facing=north,part=head]
setblock 266 132 -327 white_bed[facing=north,part=foot]
setblock 269 132 -328 potted_cactus
fill 259 132 -321 259 132 -318 smooth_quartz
setblock 259 132 -321 smoker[facing=east]
setblock 259 132 -320 crafting_table
setblock 259 132 -319 barrel[facing=up]
setblock 259 132 -318 blast_furnace[facing=east]
setblock 262 132 -320 smooth_quartz_slab[type=top]
setblock 263 132 -320 smooth_quartz_slab[type=top]
setblock 265 132 -326 enchanting_table
setblock 267 132 -322 chest[facing=west]
setblock 267 132 -321 chest[facing=west]
setblock 260 132 -318 potted_bamboo
setblock 265 132 -318 potted_fern
