tag @s add studi.platziert
scoreboard players set @s tode_top 6
team join platz2 @s
execute store result storage studi:tafel zahl int 1 run scoreboard players get @s tode
function studi:tafel/zusatz2 with storage studi:tafel
