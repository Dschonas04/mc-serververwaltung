# Anzeigeobjekt: nur die sieben besten bekommen einen Eintrag, mit festen Werten 7..1,
# damit die Reihenfolge von oben nach unten immer 1. bis 7. ist. Die Zahlen sind
# ausgeblendet, die echte Todeszahl steht im Team-Zusatz.
scoreboard objectives add tode_h dummy
scoreboard objectives add tode_max dummy
scoreboard objectives add tode_top dummy {"text":"Tode - Top 7","color":"red"}
scoreboard objectives modify tode_top numberformat blank
team add platz1
team modify platz1 prefix {"text":"1. ","color":"gold"}
team add platz2
team modify platz2 prefix {"text":"2. ","color":"gray"}
team add platz3
team modify platz3 prefix {"text":"3. ","color":"dark_red"}
team add platz4
team modify platz4 prefix {"text":"4. ","color":"white"}
team add platz5
team modify platz5 prefix {"text":"5. ","color":"white"}
team add platz6
team modify platz6 prefix {"text":"6. ","color":"white"}
team add platz7
team modify platz7 prefix {"text":"7. ","color":"white"}
scoreboard objectives setdisplay sidebar tode_top
function studi:tafel/takt
