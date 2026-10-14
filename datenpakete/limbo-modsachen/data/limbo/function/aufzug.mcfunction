# Blasen-Aufzug Aquarium <-> japanischer Garten (11.10.2026)
# Glasblock fuer Vorraum + Schaechte im Aquarium
fill 207 64 -337 211 90 -332 create:framed_glass
# Vorraum, offen zum Quertunnel (z-339..-338)
fill 208 65 -336 210 67 -335 air
fill 208 65 -337 210 67 -337 air
fill 208 64 -336 210 64 -335 prismarine_bricks
setblock 209 64 -335 sea_lantern
# Schachtboden: Seelensand (hoch, x208) und Magma (runter, x210)
setblock 208 64 -333 soul_sand
setblock 210 64 -333 magma_block
fill 208 65 -333 208 131 -333 bubble_column[drag=false]
fill 210 65 -333 210 131 -333 bubble_column[drag=true]
# Tueren halten das Wasser
setblock 208 65 -334 spruce_door[facing=south,half=lower,hinge=left]
setblock 208 66 -334 spruce_door[facing=south,half=upper,hinge=left]
setblock 210 65 -334 spruce_door[facing=south,half=lower,hinge=right]
setblock 210 66 -334 spruce_door[facing=south,half=upper,hinge=right]
# Torbogen oben im Garten
fill 207 132 -334 207 134 -334 red_terracotta
fill 211 132 -334 211 134 -334 red_terracotta
fill 207 132 -332 207 134 -332 red_terracotta
fill 211 132 -332 211 134 -332 red_terracotta
fill 206 135 -335 212 135 -331 deepslate_tile_slab[type=bottom]
fill 207 135 -334 211 135 -332 deepslate_tiles
setblock 209 134 -333 lantern[hanging=true]
fill 208 131 -334 210 131 -334 polished_andesite
fill 208 131 -332 210 131 -332 polished_andesite
