tag @s add zy.cur
execute unless score @s zy.id matches 1.. run function zy:core/init
scoreboard players operation #o zy.tmp = @s zy.id
function zy:core/stats
execute as @e[tag=zy.m] if score @s zy.owner = #o zy.tmp run tag @s add zy.owned
tag @e[tag=zy.owned,tag=!zy.dormant] add zy.mine
execute if score @s zy.p3 matches 1 run tag @s add zy.iso
