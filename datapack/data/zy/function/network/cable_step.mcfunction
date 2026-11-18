particle minecraft:dust{color:[0.35,0.9,1.0],scale:0.45} ~ ~ ~ 0 0 0 0 1 force @a[tag=zy.cur,limit=1]
scoreboard players remove #b zy.tmp 1
execute if score #b zy.tmp matches 1.. unless entity @e[tag=zy.up,distance=..0.8] positioned ^ ^ ^0.6 run function zy:network/cable_step
