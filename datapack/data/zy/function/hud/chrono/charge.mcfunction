execute unless score @s zy.charge matches 1.. run return 0
scoreboard players operation #ct zy.tmp = @s zy.charge
scoreboard players set #cm zy.tmp 100
execute if score @s zy.a11 matches 1 run scoreboard players set #cm zy.tmp 200
scoreboard players set #cn zy.tmp 20
scoreboard players set #cr zy.tmp 0
scoreboard players set #cc zy.tmp 6
scoreboard players set #cu zy.tmp 0
scoreboard players set #ck zy.tmp 0
execute if score @s zy.cmode matches 2 run scoreboard players set #cc zy.tmp 7
execute if score #ct zy.tmp matches ..40 run scoreboard players set #cu zy.tmp 1
function zy:hud/chrono/enc
return 1
