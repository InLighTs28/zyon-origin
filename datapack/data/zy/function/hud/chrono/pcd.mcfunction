execute unless score @s zy.tier matches 5.. run return 0
execute unless score @s zy.pulsecd matches 1.. run return 0
scoreboard players operation #ct zy.tmp = @s zy.pulsecd
scoreboard players set #cm zy.tmp 600
execute if score @s zy.a12 matches 1 run scoreboard players set #cm zy.tmp 400
scoreboard players set #cn zy.tmp 48
scoreboard players set #cr zy.tmp 1
scoreboard players set #cc zy.tmp 4
scoreboard players set #cu zy.tmp 0
scoreboard players set #ck zy.tmp 0
function zy:hud/chrono/enc
return 1
