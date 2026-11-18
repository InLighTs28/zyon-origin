execute store result score #x zy.tmp run attribute @s minecraft:generic.armor get 100
scoreboard players operation #arm zy.tmp += #x zy.tmp
execute store result score #x zy.tmp run attribute @s minecraft:generic.movement_speed get 100
scoreboard players operation #spd zy.tmp += #x zy.tmp
execute store result score #x zy.tmp run attribute @s minecraft:generic.attack_damage get 100
scoreboard players operation #atk zy.tmp += #x zy.tmp
execute store result score #x zy.tmp run attribute @s minecraft:generic.max_health get 100
scoreboard players operation #hp zy.tmp += #x zy.tmp
