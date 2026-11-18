effect give @s minecraft:invisibility 2 0 true
execute if score @a[tag=zy.cur,limit=1] zy.pal matches 5.. unless entity @s[tag=zy.fant] run function zy:type/perception/fantome
