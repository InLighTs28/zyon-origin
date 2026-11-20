execute store result score #c zy.tmp if entity @e[tag=zy.mine,tag=zy.s1]
scoreboard players operation @s zy.cost += #c zy.tmp
execute store result score #c zy.tmp if entity @e[tag=zy.mine,tag=zy.s2]
scoreboard players operation @s zy.cost += #c zy.tmp
execute store result score #c zy.tmp if entity @e[tag=zy.mine,tag=zy.s3]
scoreboard players operation @s zy.cost += #c zy.tmp
execute store result score #c zy.tmp if entity @e[tag=zy.mine,tag=zy.s4]
scoreboard players operation @s zy.cost += #c zy.tmp
# Erase: staying erased is expensive (0.6 Flux/s per bearer, 0.1 while suspended from the console)
execute store result score #c zy.tmp if entity @e[tag=zy.mine,tag=zy.s5]
scoreboard players operation @s zy.cost += #c zy.tmp
execute if score @s zy.p13 matches 0 run scoreboard players operation #c zy.tmp *= #k5 zy.tmp
execute if score @s zy.p13 matches 0 run scoreboard players operation @s zy.cost += #c zy.tmp
execute store result score #c zy.tmp if entity @e[tag=zy.mine,tag=zy.s6]
scoreboard players operation @s zy.cost += #c zy.tmp
scoreboard players operation @s zy.cost += #c zy.tmp
execute store result score #c zy.tmp if entity @e[tag=zy.mine,tag=zy.s8]
scoreboard players operation @s zy.cost += #c zy.tmp
scoreboard players operation @s zy.cost += #c zy.tmp
