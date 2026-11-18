execute unless score @s zy.oath matches 1.. run return 0
scoreboard players operation #ct zy.tmp = @s zy.oath
scoreboard players set #cm zy.tmp 160
scoreboard players set #cn zy.tmp 48
scoreboard players set #cr zy.tmp 0
scoreboard players set #cc zy.tmp 2
scoreboard players set #cu zy.tmp 0
scoreboard players set #ck zy.tmp 0
execute if score #ct zy.tmp matches ..40 run scoreboard players set #cu zy.tmp 1
function zy:hud/chrono/enc
return 1
