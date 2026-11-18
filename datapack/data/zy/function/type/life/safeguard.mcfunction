execute store result score #h zy.tmp run data get entity @s Health 10
scoreboard players remove #h zy.tmp 20
execute if score #a zy.tmp > #h zy.tmp run scoreboard players operation #a zy.tmp = #h zy.tmp
