# Das Spawnen im Bereich verhindert die Mod spawn-guard. Diese Pruefung ist nur noch das
# Sicherheitsnetz fuer Monster, die von aussen hereinlaufen - alle 10 Sekunden, damit der
# Selektor-Scan den Server-Thread kaum kostet.
execute in minecraft:overworld positioned -160 -64 -160 as @e[type=#studi:feindlich,dx=320,dy=384,dz=320] run function studi:spawnschutz/leise
schedule function studi:spawnschutz/pruefen 200t replace
