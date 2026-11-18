execute as @e[tag=zy.tgt,limit=1] run scoreboard players set @s zy.integ 120
scoreboard players add @s zy.sync 8
execute as @e[tag=zy.tgt,limit=1] at @s run particle minecraft:electric_spark ~ ~0.3 ~ 0.4 0.1 0.4 0.2 12 force
function zy:msg/refreshed
