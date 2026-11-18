tag @s add zy.ghosted
power grant @s zy:erased
execute if entity @s[team=] run team join zy.ghost @s
playsound zy:net.down player @a ~ ~ ~ 0.6 2
particle minecraft:reverse_portal ~ ~1 ~ 0.3 0.6 0.3 0.02 30 force
