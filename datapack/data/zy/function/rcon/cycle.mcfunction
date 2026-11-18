execute unless score @s zy.con matches 1 run return 0
execute if score @s zy.pcur matches 0 run scoreboard players operation #pv zy.tmp = @s zy.p0
execute if score @s zy.pcur matches 0 run scoreboard players add #pv zy.tmp 1
execute if score @s zy.pcur matches 0 if score #pv zy.tmp matches 5.. run scoreboard players set #pv zy.tmp 0
execute if score @s zy.pcur matches 0 run scoreboard players operation @s zy.p0 = #pv zy.tmp
execute if score @s zy.pcur matches 1 run scoreboard players operation #pv zy.tmp = @s zy.p1
execute if score @s zy.pcur matches 1 run scoreboard players add #pv zy.tmp 1
execute if score @s zy.pcur matches 1 if score #pv zy.tmp matches 4.. run scoreboard players set #pv zy.tmp 0
execute if score @s zy.pcur matches 1 run scoreboard players operation @s zy.p1 = #pv zy.tmp
execute if score @s zy.pcur matches 2 run scoreboard players operation #pv zy.tmp = @s zy.p2
execute if score @s zy.pcur matches 2 run scoreboard players add #pv zy.tmp 1
execute if score @s zy.pcur matches 2 if score #pv zy.tmp matches 5.. run scoreboard players set #pv zy.tmp 0
execute if score @s zy.pcur matches 2 run scoreboard players operation @s zy.p2 = #pv zy.tmp
execute if score @s zy.pcur matches 3 run scoreboard players operation #pv zy.tmp = @s zy.p3
execute if score @s zy.pcur matches 3 run scoreboard players add #pv zy.tmp 1
execute if score @s zy.pcur matches 3 if score #pv zy.tmp matches 2.. run scoreboard players set #pv zy.tmp 0
execute if score @s zy.pcur matches 3 run scoreboard players operation @s zy.p3 = #pv zy.tmp
execute if score @s zy.pcur matches 4 run scoreboard players operation #pv zy.tmp = @s zy.p4
execute if score @s zy.pcur matches 4 run scoreboard players add #pv zy.tmp 1
execute if score @s zy.pcur matches 4 if score #pv zy.tmp matches 3.. run scoreboard players set #pv zy.tmp 0
execute if score @s zy.pcur matches 4 run scoreboard players operation @s zy.p4 = #pv zy.tmp
execute if score @s zy.pcur matches 5 run scoreboard players operation #pv zy.tmp = @s zy.p5
execute if score @s zy.pcur matches 5 run scoreboard players add #pv zy.tmp 1
execute if score @s zy.pcur matches 5 if score #pv zy.tmp matches 3.. run scoreboard players set #pv zy.tmp 0
execute if score @s zy.pcur matches 5 run scoreboard players operation @s zy.p5 = #pv zy.tmp
execute if score @s zy.pcur matches 6 run scoreboard players operation #pv zy.tmp = @s zy.p6
execute if score @s zy.pcur matches 6 run scoreboard players add #pv zy.tmp 1
execute if score @s zy.pcur matches 6 if score #pv zy.tmp matches 3.. run scoreboard players set #pv zy.tmp 0
execute if score @s zy.pcur matches 6 run scoreboard players operation @s zy.p6 = #pv zy.tmp
execute if score @s zy.pcur matches 7 run scoreboard players operation #pv zy.tmp = @s zy.p7
execute if score @s zy.pcur matches 7 run scoreboard players add #pv zy.tmp 1
execute if score @s zy.pcur matches 7 if score #pv zy.tmp matches 2.. run scoreboard players set #pv zy.tmp 0
execute if score @s zy.pcur matches 7 run scoreboard players operation @s zy.p7 = #pv zy.tmp
execute if score @s zy.pcur matches 8 run scoreboard players operation #pv zy.tmp = @s zy.p8
execute if score @s zy.pcur matches 8 run scoreboard players add #pv zy.tmp 1
execute if score @s zy.pcur matches 8 if score #pv zy.tmp matches 5.. run scoreboard players set #pv zy.tmp 0
execute if score @s zy.pcur matches 8 run scoreboard players operation @s zy.p8 = #pv zy.tmp
execute if score @s zy.pcur matches 9 run scoreboard players operation #pv zy.tmp = @s zy.p9
execute if score @s zy.pcur matches 9 run scoreboard players add #pv zy.tmp 1
execute if score @s zy.pcur matches 9 if score #pv zy.tmp matches 5.. run scoreboard players set #pv zy.tmp 0
execute if score @s zy.pcur matches 9 run scoreboard players operation @s zy.p9 = #pv zy.tmp
execute if score @s zy.pcur matches 10 run scoreboard players operation #pv zy.tmp = @s zy.p10
execute if score @s zy.pcur matches 10 run scoreboard players add #pv zy.tmp 1
execute if score @s zy.pcur matches 10 if score #pv zy.tmp matches 5.. run scoreboard players set #pv zy.tmp 0
execute if score @s zy.pcur matches 10 run scoreboard players operation @s zy.p10 = #pv zy.tmp
execute if score @s zy.pcur matches 11 run scoreboard players operation #pv zy.tmp = @s zy.p11
execute if score @s zy.pcur matches 11 run scoreboard players add #pv zy.tmp 1
execute if score @s zy.pcur matches 11 if score #pv zy.tmp matches 5.. run scoreboard players set #pv zy.tmp 0
execute if score @s zy.pcur matches 11 run scoreboard players operation @s zy.p11 = #pv zy.tmp
execute if score @s zy.pcur matches 12 run scoreboard players operation #pv zy.tmp = @s zy.p12
execute if score @s zy.pcur matches 12 run scoreboard players add #pv zy.tmp 1
execute if score @s zy.pcur matches 12 if score #pv zy.tmp matches 3.. run scoreboard players set #pv zy.tmp 0
execute if score @s zy.pcur matches 12 run scoreboard players operation @s zy.p12 = #pv zy.tmp
execute if score @s zy.pcur matches 13 run scoreboard players operation #pv zy.tmp = @s zy.p13
execute if score @s zy.pcur matches 13 run scoreboard players add #pv zy.tmp 1
execute if score @s zy.pcur matches 13 if score #pv zy.tmp matches 2.. run scoreboard players set #pv zy.tmp 0
execute if score @s zy.pcur matches 13 run scoreboard players operation @s zy.p13 = #pv zy.tmp
execute if score @s zy.pcur matches 14 run scoreboard players operation #pv zy.tmp = @s zy.p14
execute if score @s zy.pcur matches 14 run scoreboard players add #pv zy.tmp 1
execute if score @s zy.pcur matches 14 if score #pv zy.tmp matches 2.. run scoreboard players set #pv zy.tmp 0
execute if score @s zy.pcur matches 14 run scoreboard players operation @s zy.p14 = #pv zy.tmp
execute if score @s zy.pcur matches 15 run scoreboard players operation #pv zy.tmp = @s zy.p15
execute if score @s zy.pcur matches 15 run scoreboard players add #pv zy.tmp 1
execute if score @s zy.pcur matches 15 if score #pv zy.tmp matches 2.. run scoreboard players set #pv zy.tmp 0
execute if score @s zy.pcur matches 15 run scoreboard players operation @s zy.p15 = #pv zy.tmp
execute if score @s zy.pcur matches 16 run scoreboard players operation #pv zy.tmp = @s zy.p16
execute if score @s zy.pcur matches 16 run scoreboard players add #pv zy.tmp 1
execute if score @s zy.pcur matches 16 if score #pv zy.tmp matches 2.. run scoreboard players set #pv zy.tmp 0
execute if score @s zy.pcur matches 16 run scoreboard players operation @s zy.p16 = #pv zy.tmp
playsound zy:ui.tick player @s ~ ~ ~ 0.4 1.8
function zy:hud/update
