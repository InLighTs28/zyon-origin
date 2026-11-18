scoreboard players set @s zy.count 0
execute store result score #c zy.tmp if entity @e[tag=zy.owned,tag=zy.s1]
scoreboard players operation @s zy.count += #c zy.tmp
execute store result score #c zy.tmp if entity @e[tag=zy.owned,tag=zy.s2]
scoreboard players operation @s zy.count += #c zy.tmp
execute store result score #c zy.tmp if entity @e[tag=zy.owned,tag=zy.s3]
scoreboard players operation @s zy.count += #c zy.tmp
execute store result score #c zy.tmp if entity @e[tag=zy.owned,tag=zy.s4]
scoreboard players operation @s zy.count += #c zy.tmp
execute store result score #c zy.tmp if entity @e[tag=zy.owned,tag=zy.s5]
scoreboard players operation @s zy.count += #c zy.tmp
execute store result score #c zy.tmp if entity @e[tag=zy.owned,tag=zy.s6]
scoreboard players operation @s zy.count += #c zy.tmp
execute store result score #c zy.tmp if entity @e[tag=zy.owned,tag=zy.s7]
scoreboard players operation @s zy.count += #c zy.tmp
execute store result score #c zy.tmp if entity @e[tag=zy.owned,tag=zy.s8]
scoreboard players operation @s zy.count += #c zy.tmp
execute store result score @s zy.siphons if entity @e[tag=zy.owned,tag=zy.s0]
function zy:core/count_detail
