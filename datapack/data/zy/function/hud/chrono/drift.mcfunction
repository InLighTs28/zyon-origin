execute unless score @s zy.sync matches ..0 run return 0
execute unless score @s zy.idle matches 1.. run return 0
scoreboard players set #ct zy.tmp 10
scoreboard players operation #ct zy.tmp -= @s zy.idle
scoreboard players set #cm zy.tmp 10
scoreboard players set #cn zy.tmp 20
scoreboard players set #cr zy.tmp 0
scoreboard players set #cc zy.tmp 11
scoreboard players set #cu zy.tmp 0
scoreboard players set #ck zy.tmp 0
execute if score #ct zy.tmp matches ..3 run scoreboard players set #cu zy.tmp 1
execute if score #ct zy.tmp matches ..0 run scoreboard players set #cc zy.tmp 12
execute if score #ct zy.tmp matches ..0 run scoreboard players set #ct zy.tmp 10
function zy:hud/chrono/enc
return 1
