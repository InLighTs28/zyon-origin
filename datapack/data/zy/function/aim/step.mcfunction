scoreboard players add #ray zy.tmp 1
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[tag=zy.m,dx=0,dy=0,dz=0,sort=nearest] if score @s zy.owner = #ao zy.tmp run tag @s add zy.tgt
execute if entity @e[tag=zy.tgt,limit=1] run return 1
execute unless block ~ ~ ~ #minecraft:replaceable run return 0
execute if score #ray zy.tmp matches ..95 positioned ^ ^ ^0.5 run function zy:aim/step
