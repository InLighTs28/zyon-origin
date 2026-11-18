execute at @s run function zy:seal/measure
tag @s add zy.m
scoreboard players add #uid zy.uid 1
scoreboard players operation @s zy.uid = #uid zy.uid
scoreboard players set @s zy.acc 0
scoreboard players set @s zy.given 0
scoreboard players set @s zy.over 0
