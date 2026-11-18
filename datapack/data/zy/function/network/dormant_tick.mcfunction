scoreboard players add @s zy.dorm 1
particle minecraft:dust{color:[0.45,0.45,0.55],scale:0.8} ~ ~0.2 ~ 0.4 0.05 0.4 0 4
execute if score @s zy.dorm matches 20.. run playsound zy:ui.blip player @a ~ ~ ~ 0.4 0.7
execute if score @s zy.dorm matches 30.. unless score @a[tag=zy.cur,limit=1] zy.a7 matches 1 run function zy:network/collapse
execute if score @s zy.dorm matches 60.. run function zy:network/collapse
