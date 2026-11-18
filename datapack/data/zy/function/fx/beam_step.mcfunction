particle dust_color_transition{from_color:[0.35,0.90,1.00],to_color:[1.00,1.00,1.00],scale:0.5} ~ ~ ~ 0 0 0 0 1 force
execute if score #b zy.tmp matches 1..48 run particle minecraft:electric_spark ~ ~ ~ 0 0 0 0 1 force
scoreboard players remove #b zy.tmp 1
execute if score #b zy.tmp matches 1.. unless entity @e[tag=zy.tgt,distance=..0.7] positioned ^ ^ ^0.5 run function zy:fx/beam_step
