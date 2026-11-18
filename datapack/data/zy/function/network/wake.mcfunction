tag @s remove zy.dormant
tag @s add zy.mine
scoreboard players set @s zy.dorm 0
execute store result score @s zy.hp run data get entity @s Health 10
scoreboard players set #mode zy.tmp 0
function zy:ring/recolor
playsound zy:net.confirm player @a ~ ~ ~ 0.8 2
particle minecraft:electric_spark ~ ~0.3 ~ 0.5 0.1 0.5 0.3 20 force
function zy:msg/link_restored
