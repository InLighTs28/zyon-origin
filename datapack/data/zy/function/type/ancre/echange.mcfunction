summon minecraft:marker ~ ~ ~ {Tags:["zy.ancre"]}
execute at @e[tag=zy.ancY,limit=1] run tp @s ~ ~ ~
tp @e[tag=zy.ancY,limit=1] @e[type=marker,tag=zy.ancre,limit=1]
kill @e[type=marker,tag=zy.ancre]
