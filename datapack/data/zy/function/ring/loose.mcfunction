execute at @e[tag=zy.linked,limit=1] run tp @s ~ ~0.04 ~
execute unless score @s zy.off matches 0 run function zy:ring/offset_zero
execute unless entity @e[tag=zy.linked,type=player] run ride @s mount @e[tag=zy.linked,limit=1]
