execute store result score #h zy.tmp run data get entity @s Health 10
scoreboard players operation @s zy.dmg = @s zy.hp
scoreboard players operation @s zy.dmg -= #h zy.tmp
