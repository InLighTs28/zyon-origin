scoreboard players operation #o zy.tmp = @s zy.id
execute as @e[tag=zy.m,tag=!zy.dormant] if score @s zy.owner = #o zy.tmp run tag @s add zy.fxt
