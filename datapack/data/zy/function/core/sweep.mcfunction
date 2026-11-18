scoreboard players operation #o zy.tmp = @s zy.owner
scoreboard players set #f zy.tmp 0
execute as @a if score @s zy.id = #o zy.tmp run scoreboard players set #f zy.tmp 1
execute if score #f zy.tmp matches 0 run function zy:seal/clear
