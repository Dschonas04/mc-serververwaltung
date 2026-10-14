# Hoechsten Wert der noch nicht platzierten Spieler suchen, Treffer markieren,
# genau einen davon nehmen (limit=1).
scoreboard players set #max tode_h -1000
execute as @a[tag=!studi.platziert] run scoreboard players operation #max tode_h > @s tode
scoreboard players set @a tode_max 0
execute as @a[tag=!studi.platziert] if score @s tode = #max tode_h run scoreboard players set @s tode_max 1
execute as @a[scores={tode_max=1},limit=1] run function studi:tafel/nimm7
