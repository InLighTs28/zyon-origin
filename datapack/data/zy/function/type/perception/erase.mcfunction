execute unless entity @s[type=player] run effect give @s minecraft:invisibility 2 0 true
effect clear @s[type=player] minecraft:invisibility
execute unless entity @s[tag=zy.ghosted] run function zy:type/perception/ghost
