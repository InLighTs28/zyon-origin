scoreboard players set #ct zy.tmp 9999
execute as @e[tag=zy.mine,tag=zy.m,scores={zy.integ=-100000..}] run scoreboard players operation #ct zy.tmp < @s zy.integ
execute unless score #ct zy.tmp matches 1..30 run return 0
scoreboard players set #cm zy.tmp 30
scoreboard players operation #cs zy.tmp = #ct zy.tmp
scoreboard players set #cr zy.tmp 0
scoreboard players set #cv zy.tmp 0
execute if score #ct zy.tmp matches ..10 run scoreboard players set #cv zy.tmp 3
function zy:hud/chrono/enc
scoreboard players operation #c_integ zy.tmp = #ce zy.tmp
