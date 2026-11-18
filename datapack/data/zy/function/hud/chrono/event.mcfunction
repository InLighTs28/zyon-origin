scoreboard players set #ct zy.tmp 0
execute as @e[tag=zy.owned,scores={zy.evt=1..}] run scoreboard players operation #ct zy.tmp > @s zy.evt
execute unless score #ct zy.tmp matches 1.. run return 0
scoreboard players set #cm zy.tmp 10
scoreboard players operation #cs zy.tmp = #ct zy.tmp
scoreboard players set #cr zy.tmp 0
scoreboard players set #cv zy.tmp 0
execute if entity @e[tag=zy.owned,tag=zy.evintr,scores={zy.evt=1..},limit=1] run scoreboard players set #cv zy.tmp 1
execute if score #ct zy.tmp matches ..3 run scoreboard players add #cv zy.tmp 2
function zy:hud/chrono/enc
scoreboard players operation #c_event zy.tmp = #ce zy.tmp
