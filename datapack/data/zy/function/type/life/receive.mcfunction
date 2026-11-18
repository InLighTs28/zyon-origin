scoreboard players operation #a zy.tmp = #d zy.tmp
scoreboard players operation #a zy.tmp *= @s zy.eff
scoreboard players operation #a zy.tmp /= #100 zy.tmp
execute if entity @s[type=player] run function zy:type/life/safeguard
execute if score #a zy.tmp matches ..0 run return 0
scoreboard players operation @s zy.acc += #a zy.tmp
scoreboard players operation #v zy.tmp = #a zy.tmp
scoreboard players operation #v zy.tmp *= #10 zy.tmp
function zy:util/dec
function zy:type/life/hit with storage zy:m dec
particle dust{color:[0.94,0.25,0.28],scale:1.0} ~ ~1 ~ 0.3 0.5 0.3 0 12 force
particle minecraft:electric_spark ~ ~1 ~ 0.2 0.4 0.2 0.1 4
