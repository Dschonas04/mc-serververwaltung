# Blasen-Aufzug in Jonas' Schacht: Huette (y124) <-> Kraterboden (y-58), 11.10.2026
fill 252 -58 -270 255 123 -267 create:framed_glass
setblock 253 -59 -269 soul_sand
setblock 254 -59 -269 magma_block
fill 253 -58 -269 253 124 -269 bubble_column[drag=false]
fill 254 -58 -269 254 124 -269 bubble_column[drag=true]
# Unten: Tueren nach Norden
setblock 253 -58 -270 spruce_door[facing=south,half=lower,hinge=left]
setblock 253 -57 -270 spruce_door[facing=south,half=upper,hinge=left]
setblock 254 -58 -270 spruce_door[facing=south,half=lower,hinge=right]
setblock 254 -57 -270 spruce_door[facing=south,half=upper,hinge=right]
fill 252 -59 -273 255 -59 -271 polished_andesite
setblock 252 -58 -271 lantern
setblock 255 -58 -271 lantern
