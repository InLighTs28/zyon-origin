execute on vehicle store result score #vy zy.tmp run data get entity @s Pos[1] 100
execute store result score #ry zy.tmp run data get entity @s Pos[1] 100
scoreboard players operation #vy zy.tmp -= #ry zy.tmp
scoreboard players add #vy zy.tmp 4
scoreboard players operation #vy zy.tmp += @s zy.layer
execute unless score #vy zy.tmp = @s zy.off run function zy:ring/offset
