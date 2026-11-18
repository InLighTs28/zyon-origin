tag @s remove zy.conp
execute if score @s zy.chold matches ..5 run function zy:core/swap
execute if score @s zy.con matches 1 run playsound zy:console.close player @s ~ ~ ~ 0.6 1.1
scoreboard players set @s zy.con 0
scoreboard players set @s zy.chold 0
