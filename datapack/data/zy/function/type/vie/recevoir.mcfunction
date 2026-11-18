scoreboard players operation #a zy.tmp = #d zy.tmp
execute if entity @s[type=player] run function zy:type/vie/gardefou
execute if score #a zy.tmp matches ..0 run return 0
scoreboard players operation @s zy.acc += #a zy.tmp
scoreboard players operation #v zy.tmp = #a zy.tmp
scoreboard players operation #v zy.tmp *= #10 zy.tmp
function zy:util/dec
function zy:type/vie/coup with storage zy:m dec
particle dust{color:[0.92,0.24,0.24],scale:1.0} ~ ~1 ~ 0.3 0.5 0.3 0 12 force
particle minecraft:damage_indicator ~ ~1.2 ~ 0.2 0.2 0.2 0.1 2
