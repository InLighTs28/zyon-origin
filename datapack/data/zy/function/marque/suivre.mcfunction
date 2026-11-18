scoreboard players operation #u zy.tmp = @s zy.uid
execute as @e[tag=zy.m] if score @s zy.uid = #u zy.tmp run tag @s add zy.lie
execute unless entity @e[tag=zy.lie,limit=1] run return run kill @s
execute if entity @e[tag=zy.lie,tag=zy.maj,limit=1] run function zy:marque/reconstruire
execute at @e[tag=zy.lie,limit=1] anchored eyes positioned ^ ^ ^ run tp @s ~ ~0.8 ~
tag @e[tag=zy.lie] remove zy.lie
