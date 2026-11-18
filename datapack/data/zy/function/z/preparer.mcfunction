tag @s add zy.cur
execute unless score @s zy.id matches 1.. run function zy:z/init
scoreboard players operation #o zy.tmp = @s zy.id
function zy:z/stats
execute as @e[tag=zy.m] if score @s zy.own = #o zy.tmp run tag @s add zy.mien
