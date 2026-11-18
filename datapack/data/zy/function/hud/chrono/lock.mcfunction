execute unless score @s zy.lock matches 1.. run return 0
scoreboard players operation #ct zy.tmp = @s zy.lock
scoreboard players set #cm zy.tmp 1200
execute if score @s zy.a13 matches 1 run scoreboard players set #cm zy.tmp 600
scoreboard players set #cn zy.tmp 48
scoreboard players set #cr zy.tmp 0
scoreboard players set #cc zy.tmp 3
scoreboard players set #cu zy.tmp 0
scoreboard players set #ck zy.tmp 0
execute if score #ct zy.tmp matches ..60 run scoreboard players set #cu zy.tmp 1
function zy:hud/chrono/enc
return 1
