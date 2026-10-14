tag @s add studi.platziert
scoreboard players set @s tode_top 3
team join platz5 @s
execute store result storage studi:tafel zahl int 1 run scoreboard players get @s tode
function studi:tafel/zusatz5 with storage studi:tafel
