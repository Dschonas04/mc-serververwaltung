tag @s add studi.platziert
scoreboard players set @s tode_top 2
team join platz6 @s
execute store result storage studi:tafel zahl int 1 run scoreboard players get @s tode
function studi:tafel/zusatz6 with storage studi:tafel
