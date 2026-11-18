execute as @e[tag=zy.mine,tag=zy.s1] run function zy:type/life/read
execute as @e[tag=zy.mine,tag=zy.s1,tag=!zy.iso,scores={zy.dmg=1..}] at @s run function zy:type/life/spread
execute as @e[tag=zy.mine,tag=zy.s1] store result score @s zy.hp run data get entity @s Health 10
