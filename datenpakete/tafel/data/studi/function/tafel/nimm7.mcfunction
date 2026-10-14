tag @s add studi.platziert
scoreboard players set @s tode_top 1
team join platz7 @s
execute store result storage studi:tafel zahl int 1 run scoreboard players get @s tode
function studi:tafel/zusatz7 with storage studi:tafel
