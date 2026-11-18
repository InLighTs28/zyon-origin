execute unless score @s zy.esskeep matches 1.. run return 0
scoreboard players operation #ct zy.tmp = @s zy.esskeep
scoreboard players set #cm zy.tmp 200
scoreboard players set #cn zy.tmp 20
scoreboard players set #cr zy.tmp 0
scoreboard players set #cc zy.tmp 8
scoreboard players set #cu zy.tmp 0
scoreboard players set #ck zy.tmp 0
execute if score #ct zy.tmp matches ..40 run scoreboard players set #cu zy.tmp 1
function zy:hud/chrono/enc
return 1
