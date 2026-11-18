execute as @e[tag=zy.mien,tag=zy.s1] run function zy:type/vie/lire
execute as @e[tag=zy.mien,tag=zy.s1,scores={zy.dg=1..}] at @s run function zy:type/vie/propager
execute as @e[tag=zy.mien,tag=zy.s1] store result score @s zy.hp run data get entity @s Health 10
