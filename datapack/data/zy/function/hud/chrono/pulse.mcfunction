execute unless score @s zy.pulse matches 1.. run return 0
scoreboard players operation #ct zy.tmp = @s zy.pulse
scoreboard players set #cm zy.tmp 100
scoreboard players operation #cs zy.tmp = #ct zy.tmp
scoreboard players add #cs zy.tmp 19
scoreboard players operation #cs zy.tmp /= #20 zy.tmp
scoreboard players set #cr zy.tmp 0
scoreboard players set #cv zy.tmp 0
execute if score #ct zy.tmp matches ..20 run scoreboard players add #cv zy.tmp 2
function zy:hud/chrono/enc
scoreboard players operation #c_pulse zy.tmp = #ce zy.tmp
