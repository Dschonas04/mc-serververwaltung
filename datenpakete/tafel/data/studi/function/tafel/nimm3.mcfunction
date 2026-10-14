tag @s add studi.platziert
scoreboard players set @s tode_top 5
team join platz3 @s
execute store result storage studi:tafel zahl int 1 run scoreboard players get @s tode
function studi:tafel/zusatz3 with storage studi:tafel
