scoreboard players set #evdone zy.tmp 1
execute as @e[tag=zy.tgt,limit=1] run function zy:ev/clear
scoreboard players add @s zy.sync 25
execute as @e[tag=zy.tgt,limit=1] at @s run particle minecraft:electric_spark ~ ~1 ~ 0.4 0.8 0.4 0.3 30 force
function zy:msg/intr_ok
