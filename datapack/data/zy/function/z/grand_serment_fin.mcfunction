execute as @e[tag=zy.mien,tag=!zy.cur] at @s run function zy:sceau/liberer
execute as @e[tag=zy.mien] run function zy:sceau/retirer
function zy:type/essence/nettoyer
scoreboard players add @s zy.fc 150
scoreboard players set @s zy.lock 1200
playsound minecraft:entity.wither.break_block player @a ~ ~ ~ 1 0.7
particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 0 1 force
function zy:msg/gs_fin
