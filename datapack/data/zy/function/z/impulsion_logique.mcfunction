execute store result score @s zy.food run data get entity @s foodLevel
execute if score @s zy.pal matches 7.. if score @s zy.nb matches 6.. unless score @s zy.gs matches 1.. run return run function zy:z/grand_serment
execute if score @s zy.pal matches ..4 run return run function zy:msg/imp_verrou
execute if score @s zy.cdi matches 1.. run return run function zy:msg/imp_cd
execute if score @s zy.food matches ..7 run return run function zy:msg/imp_faim
scoreboard players set @s zy.imp 100
scoreboard players set @s zy.cdi 600
scoreboard players add @s zy.fc 60
playsound minecraft:item.trident.thunder player @a ~ ~ ~ 0.8 1.6
particle minecraft:end_rod ~ ~1 ~ 0.5 0.8 0.5 0.08 40
function zy:msg/impulsion
