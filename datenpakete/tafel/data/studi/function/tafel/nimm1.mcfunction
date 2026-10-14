tag @s add studi.platziert
scoreboard players set @s tode_top 7
team join platz1 @s
execute store result storage studi:tafel zahl int 1 run scoreboard players get @s tode
function studi:tafel/zusatz1 with storage studi:tafel
