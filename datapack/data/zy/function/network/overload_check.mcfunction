function zy:seal/stack
execute if score @s zy.stack matches 4.. unless score @s zy.over matches 1.. run function zy:network/overload_start
execute if score @s zy.stack matches ..3 run scoreboard players set @s zy.over 0
