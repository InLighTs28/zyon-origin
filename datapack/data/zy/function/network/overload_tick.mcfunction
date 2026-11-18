scoreboard players remove @s zy.over 1
scoreboard players operation #ph zy.tmp = @s zy.over
scoreboard players set #k zy.tmp 8
scoreboard players operation #ph zy.tmp %= #k zy.tmp
execute if score #ph zy.tmp matches 0 run scoreboard players set #mode zy.tmp 1
execute if score #ph zy.tmp matches 0 run function zy:ring/recolor
execute if score #ph zy.tmp matches 4 run scoreboard players set #mode zy.tmp 0
execute if score #ph zy.tmp matches 4 run function zy:ring/recolor
execute if score #ph zy.tmp matches 0 run playsound zy:ui.blip player @a ~ ~ ~ 0.8 1.5
execute if score #ph zy.tmp matches 0 if score @s zy.over matches ..16 run playsound zy:ui.blip player @a ~ ~ ~ 0.8 2
particle dust{color:[1.00,0.24,0.24],scale:1.3} ~ ~0.2 ~ 0.8 0.05 0.8 0 6 force
particle minecraft:electric_spark ~ ~0.6 ~ 0.4 0.4 0.4 0.3 3 force
execute if score @s zy.over matches 0 run function zy:network/explode
