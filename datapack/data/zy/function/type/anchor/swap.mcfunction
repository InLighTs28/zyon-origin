summon minecraft:marker ~ ~ ~ {Tags:["zy.anchor"]}
execute at @e[tag=zy.ancB,limit=1] run tp @s ~ ~ ~
tp @e[tag=zy.ancB,limit=1] @e[type=marker,tag=zy.anchor,limit=1]
kill @e[type=marker,tag=zy.anchor]
