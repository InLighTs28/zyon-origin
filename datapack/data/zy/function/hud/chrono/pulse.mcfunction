execute unless score @s zy.pulse matches 1.. run return 0
scoreboard players operation #ct zy.tmp = @s zy.pulse
scoreboard players set #cm zy.tmp 100
scoreboard players set #cn zy.tmp 48
scoreboard players set #cr zy.tmp 0
scoreboard players set #cc zy.tmp 1
scoreboard players set #cu zy.tmp 0
scoreboard players set #ck zy.tmp 0
execute if score #ct zy.tmp matches ..20 run scoreboard players set #cu zy.tmp 1
function zy:hud/chrono/enc
return 1
