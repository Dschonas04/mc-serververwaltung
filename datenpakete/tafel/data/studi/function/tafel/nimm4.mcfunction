tag @s add studi.platziert
scoreboard players set @s tode_top 4
team join platz4 @s
execute store result storage studi:tafel zahl int 1 run scoreboard players get @s tode
function studi:tafel/zusatz4 with storage studi:tafel
