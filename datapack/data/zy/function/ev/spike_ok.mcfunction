scoreboard players set #evdone zy.tmp 1
execute as @e[tag=zy.tgt,limit=1] run function zy:ev/clear
scoreboard players add @s zy.res 300
scoreboard players add @s zy.gain 30
scoreboard players add @s zy.sync 25
execute as @e[tag=zy.tgt,limit=1] at @s run particle minecraft:end_rod ~ ~1 ~ 0.4 0.8 0.4 0.1 30 force
function zy:msg/spike_ok
