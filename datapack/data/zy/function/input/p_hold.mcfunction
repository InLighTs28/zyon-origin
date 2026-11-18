scoreboard players add @s zy.hold 1
execute if score @s zy.hold matches 10 run function zy:input/p_armed_shatter
execute if score @s zy.hold matches 30 run function zy:input/p_armed_dissolve
execute if score @s zy.hold matches 200.. run function zy:input/p_reset
function zy:hud/state
