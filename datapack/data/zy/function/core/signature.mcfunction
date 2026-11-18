scoreboard players set @s zy.sigt 10
execute if score @s zy.a2 matches 1 run scoreboard players set @s zy.sigt 30
execute as @e[type=#zy:hostile,distance=..24,sort=random,limit=1] run function zy:core/signature_lock
