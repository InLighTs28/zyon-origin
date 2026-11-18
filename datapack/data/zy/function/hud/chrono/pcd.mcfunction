execute unless score @s zy.tier matches 5.. run return 0
execute unless score @s zy.pulsecd matches 1.. unless score @s zy.hrdy matches 1.. run return 0
scoreboard players operation #ct zy.tmp = @s zy.pulsecd
scoreboard players set #cm zy.tmp 600
execute if score @s zy.a12 matches 1 run scoreboard players set #cm zy.tmp 400
scoreboard players operation #cs zy.tmp = #ct zy.tmp
scoreboard players add #cs zy.tmp 19
scoreboard players operation #cs zy.tmp /= #20 zy.tmp
scoreboard players set #cr zy.tmp 1
scoreboard players set #cv zy.tmp 0
execute if score @s zy.pulsecd matches ..0 run scoreboard players set #cv zy.tmp 5
function zy:hud/chrono/enc
scoreboard players operation #c_pcd zy.tmp = #ce zy.tmp
