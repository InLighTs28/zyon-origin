tag @s add zy.src
scoreboard players operation #d zy.tmp = @s zy.dg
scoreboard players operation #d zy.tmp *= #rate zy.tmp
scoreboard players operation #d zy.tmp /= #100 zy.tmp
execute if score #d zy.tmp matches 1.. as @e[tag=zy.mien,tag=zy.s1,tag=!zy.src] at @s run function zy:type/vie/recevoir
tag @s remove zy.src
