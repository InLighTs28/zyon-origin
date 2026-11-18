power revoke @s zy:erased
execute if entity @s[team=zy.ghost] run team leave @s
effect clear @s minecraft:invisibility
tag @s remove zy.ghosted
