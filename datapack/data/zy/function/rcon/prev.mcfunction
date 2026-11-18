execute unless score @s zy.con matches 1 run return 0
scoreboard players operation #pn zy.tmp = @s zy.pcur
execute if score @s zy.pcur matches 0 run scoreboard players set #pn zy.tmp 14
execute if score @s zy.pcur matches 1 run scoreboard players set #pn zy.tmp 0
execute if score @s zy.pcur matches 2 run scoreboard players set #pn zy.tmp 1
execute if score @s zy.pcur matches 3 run scoreboard players set #pn zy.tmp 2
execute if score @s zy.pcur matches 12 run scoreboard players set #pn zy.tmp 3
execute if score @s zy.pcur matches 16 run scoreboard players set #pn zy.tmp 12
execute if score @s zy.pcur matches 4 run scoreboard players set #pn zy.tmp 16
execute if score @s zy.pcur matches 5 run scoreboard players set #pn zy.tmp 4
execute if score @s zy.pcur matches 6 run scoreboard players set #pn zy.tmp 5
execute if score @s zy.pcur matches 7 run scoreboard players set #pn zy.tmp 6
execute if score @s zy.pcur matches 13 run scoreboard players set #pn zy.tmp 7
execute if score @s zy.pcur matches 8 run scoreboard players set #pn zy.tmp 13
execute if score @s zy.pcur matches 9 run scoreboard players set #pn zy.tmp 8
execute if score @s zy.pcur matches 10 run scoreboard players set #pn zy.tmp 9
execute if score @s zy.pcur matches 11 run scoreboard players set #pn zy.tmp 10
execute if score @s zy.pcur matches 15 run scoreboard players set #pn zy.tmp 11
execute if score @s zy.pcur matches 14 run scoreboard players set #pn zy.tmp 15
scoreboard players operation @s zy.pcur = #pn zy.tmp
playsound zy:ui.tick player @s ~ ~ ~ 0.35 1.6
function zy:hud/update
