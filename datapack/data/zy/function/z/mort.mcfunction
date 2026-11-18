execute if entity @s[tag=zy.z] run function zy:z/preparer
execute if entity @s[tag=zy.z] as @e[tag=zy.mien] run function zy:sceau/retirer
execute if entity @s[tag=zy.z] run function zy:type/essence/nettoyer
execute if entity @s[tag=zy.z] run function zy:z/finir
execute if entity @s[tag=zy.m] run function zy:sceau/retirer
scoreboard players set @s zy.imp 0
scoreboard players set @s zy.gs 0
scoreboard players set @s zy.mort 0
