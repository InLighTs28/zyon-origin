scoreboard players add @a[tag=zy.cur,limit=1] zy.fc 30
tag @s add zy.ancT
execute if score @a[tag=zy.cur,limit=1] zy.pal matches 7.. as @e[tag=zy.mien,tag=zy.s7,tag=!zy.ancT,tag=!zy.cur,limit=1,sort=nearest] run tag @s add zy.ancY
execute if entity @e[tag=zy.ancY,limit=1] run function zy:type/ancre/echange
execute unless entity @e[tag=zy.ancY,limit=1] at @a[tag=zy.cur,limit=1] rotated ~ 0 positioned ^ ^ ^1.5 run tp @s ~ ~ ~
particle minecraft:reverse_portal ~ ~1 ~ 0.4 0.6 0.4 0.05 40 force
playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 0.6
tag @s remove zy.ancT
tag @e[tag=zy.ancY] remove zy.ancY
