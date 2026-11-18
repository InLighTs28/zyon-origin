scoreboard players operation #ao zy.tmp = @s zy.id
scoreboard players set #ray zy.tmp 0
tag @e[tag=zy.tgt] remove zy.tgt
execute at @s anchored eyes positioned ^ ^ ^1 run function zy:aim/step
execute unless entity @e[tag=zy.tgt,limit=1] run return run function zy:aim/none
execute at @e[tag=zy.tgt,limit=1] run particle minecraft:electric_spark ~ ~1 ~ 0.3 0.5 0.3 0.15 20 force @s
execute at @e[tag=zy.tgt,limit=1] run particle minecraft:end_rod ~ ~1 ~ 0.2 0.4 0.2 0.05 8 force @s
function zy:seal/touch
