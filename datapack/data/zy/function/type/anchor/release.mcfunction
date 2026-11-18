advancement grant @a[tag=zy.cur,limit=1] only zy:zyon/anchor
scoreboard players add @a[tag=zy.cur,limit=1] zy.cost 30
tag @s add zy.ancA
execute if score @a[tag=zy.cur,limit=1] zy.tier matches 7.. if score @a[tag=zy.cur,limit=1] zy.p15 matches 1 as @e[tag=zy.mine,tag=zy.s7,tag=!zy.ancA,tag=!zy.cur,limit=1,sort=nearest] run tag @s add zy.ancB
execute if entity @e[tag=zy.ancB,limit=1] run function zy:type/anchor/swap
execute unless entity @e[tag=zy.ancB,limit=1] at @a[tag=zy.cur,limit=1] rotated ~ 0 positioned ^ ^ ^1.5 run tp @s ~ ~ ~
particle minecraft:reverse_portal ~ ~1 ~ 0.4 0.6 0.4 0.05 40 force
playsound zy:net.warp player @a ~ ~ ~ 1 0.6
tag @s remove zy.ancA
tag @e[tag=zy.ancB] remove zy.ancB
