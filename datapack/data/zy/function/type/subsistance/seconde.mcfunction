execute if score @a[tag=zy.cur,limit=1] zy.pal matches ..2 run effect give @s minecraft:hunger 2 4 true
execute if score @a[tag=zy.cur,limit=1] zy.pal matches 3.. run effect give @s minecraft:hunger 2 9 true
execute unless score @a[tag=zy.cur,limit=1] zy.food matches 20.. run scoreboard players add @a[tag=zy.cur,limit=1] zy.fg 3
execute if score @a[tag=zy.cur,limit=1] zy.pal matches 5.. unless entity @s[tag=zy.famine] run function zy:type/subsistance/famine
particle dust{color:[0.69,0.45,0.24],scale:1.0} ~ ~1 ~ 0.3 0.4 0.3 0 6 force
