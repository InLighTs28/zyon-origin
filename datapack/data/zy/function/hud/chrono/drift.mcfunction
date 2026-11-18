execute unless score @s zy.sync matches ..0 run return 0
execute unless score @s zy.idle matches 1.. run return 0
scoreboard players set #ct zy.tmp 10
scoreboard players operation #ct zy.tmp -= @s zy.idle
scoreboard players set #cm zy.tmp 10
scoreboard players operation #cs zy.tmp = #ct zy.tmp
scoreboard players set #cr zy.tmp 0
scoreboard players set #cv zy.tmp 0
execute if score #ct zy.tmp matches ..3 run scoreboard players set #cv zy.tmp 2
execute if score #ct zy.tmp matches ..0 run scoreboard players set #ct zy.tmp 10
execute if score #ct zy.tmp matches 10 if score @s zy.idle matches 10.. run scoreboard players set #cv zy.tmp 3
function zy:hud/chrono/enc
scoreboard players operation #c_drift zy.tmp = #ce zy.tmp
