scoreboard players set #ct zy.tmp 0
execute as @e[tag=zy.owned,scores={zy.evt=1..}] run scoreboard players operation #ct zy.tmp > @s zy.evt
execute unless score #ct zy.tmp matches 1.. run return 0
scoreboard players set #cm zy.tmp 10
scoreboard players set #cn zy.tmp 20
scoreboard players set #cr zy.tmp 0
scoreboard players set #cc zy.tmp 9
execute if entity @e[tag=zy.owned,tag=zy.evintr,scores={zy.evt=1..},limit=1] run scoreboard players set #cc zy.tmp 10
scoreboard players set #cu zy.tmp 0
execute if score #ct zy.tmp matches ..3 run scoreboard players set #cu zy.tmp 1
scoreboard players set #ck zy.tmp 0
function zy:hud/chrono/enc
return 1
