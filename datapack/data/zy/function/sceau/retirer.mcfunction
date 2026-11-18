tag @s remove zy.s0
tag @s remove zy.s1
tag @s remove zy.s2
tag @s remove zy.s3
tag @s remove zy.s4
tag @s remove zy.s5
tag @s remove zy.s6
tag @s remove zy.s7
tag @s remove zy.s8
tag @s remove zy.m
tag @s remove zy.mien
tag @s remove zy.maj
scoreboard players reset @s zy.own
scoreboard players set @s zy.el 0
scoreboard players set @s zy.ov 0
scoreboard players set @s zy.acc 0
scoreboard players set @s zy.gv 0
execute if entity @s[tag=zy.fant] run function zy:type/perception/nettoyer
execute if entity @s[tag=zy.famine] run function zy:type/subsistance/nettoyer
