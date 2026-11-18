scoreboard players operation #p zy.tmp = @s zy.owner
scoreboard players set #f zy.tmp 0
execute as @a[tag=zy.z] if score @s zy.id = #p zy.tmp run scoreboard players set #f zy.tmp 1
execute if score #f zy.tmp matches 0 run function zy:seal/clear
