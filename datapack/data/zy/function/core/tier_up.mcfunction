scoreboard players operation @s zy.tierold = @s zy.tier
function zy:adv/tiers
execute if score @s zy.tier matches 1 run scoreboard players set @s zy.note 44
execute if score @s zy.tier matches 2 run scoreboard players set @s zy.note 45
execute if score @s zy.tier matches 3 run scoreboard players set @s zy.note 46
execute if score @s zy.tier matches 4 run scoreboard players set @s zy.note 47
execute if score @s zy.tier matches 5 run scoreboard players set @s zy.note 48
execute if score @s zy.tier matches 6 run scoreboard players set @s zy.note 49
execute if score @s zy.tier matches 7 run scoreboard players set @s zy.note 50
scoreboard players set @s zy.msg 60
playsound zy:net.up player @s ~ ~ ~ 1 1.4
playsound zy:net.surge player @s ~ ~ ~ 0.8 1.2
playsound zy:ui.blip player @s ~ ~ ~ 0.6 1
playsound zy:ui.blip player @s ~ ~ ~ 0.6 1.26
playsound zy:ui.blip player @s ~ ~ ~ 0.6 1.5
particle minecraft:end_rod ~ ~1 ~ 0.6 1 0.6 0.05 40
