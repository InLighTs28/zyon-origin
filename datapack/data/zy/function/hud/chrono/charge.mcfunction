execute unless score @s zy.charge matches 1.. run return 0
scoreboard players operation #ct zy.tmp = @s zy.charge
scoreboard players set #cm zy.tmp 100
execute if score @s zy.a11 matches 1 run scoreboard players set #cm zy.tmp 200
scoreboard players operation #cs zy.tmp = #ct zy.tmp
scoreboard players add #cs zy.tmp 19
scoreboard players operation #cs zy.tmp /= #20 zy.tmp
scoreboard players set #cr zy.tmp 0
scoreboard players set #cv zy.tmp 0
execute if score @s zy.cmode matches 2 run scoreboard players set #cv zy.tmp 1
execute if score #ct zy.tmp matches ..40 run scoreboard players add #cv zy.tmp 2
function zy:hud/chrono/enc
scoreboard players operation #c_charge zy.tmp = #ce zy.tmp
