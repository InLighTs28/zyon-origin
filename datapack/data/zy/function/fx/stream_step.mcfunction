particle dust_color_transition{from_color:[0.65,0.41,0.94],to_color:[1.00,1.00,1.00],scale:0.6} ~ ~ ~ 0.02 0.02 0.02 0 1 force
scoreboard players remove #b zy.tmp 1
execute if score #b zy.tmp matches 1.. unless entity @a[tag=zy.cur,distance=..1] positioned ^ ^ ^0.7 run function zy:fx/stream_step
