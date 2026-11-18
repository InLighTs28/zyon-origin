scoreboard players set @s zy.nb 0
execute store result score #c zy.tmp if entity @e[tag=zy.mien,tag=zy.s1]
scoreboard players operation @s zy.nb += #c zy.tmp
execute store result score #c zy.tmp if entity @e[tag=zy.mien,tag=zy.s2]
scoreboard players operation @s zy.nb += #c zy.tmp
execute store result score #c zy.tmp if entity @e[tag=zy.mien,tag=zy.s3]
scoreboard players operation @s zy.nb += #c zy.tmp
execute store result score #c zy.tmp if entity @e[tag=zy.mien,tag=zy.s4]
scoreboard players operation @s zy.nb += #c zy.tmp
execute store result score #c zy.tmp if entity @e[tag=zy.mien,tag=zy.s5]
scoreboard players operation @s zy.nb += #c zy.tmp
execute store result score #c zy.tmp if entity @e[tag=zy.mien,tag=zy.s6]
scoreboard players operation @s zy.nb += #c zy.tmp
execute store result score #c zy.tmp if entity @e[tag=zy.mien,tag=zy.s7]
scoreboard players operation @s zy.nb += #c zy.tmp
execute store result score #c zy.tmp if entity @e[tag=zy.mien,tag=zy.s8]
scoreboard players operation @s zy.nb += #c zy.tmp
execute store result score @s zy.ns if entity @e[tag=zy.mien,tag=zy.s0]
