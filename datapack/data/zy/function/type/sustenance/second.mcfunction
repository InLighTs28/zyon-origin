execute if score @a[tag=zy.cur,limit=1] zy.tier matches ..2 run effect give @s minecraft:hunger 2 4 true
execute if score @a[tag=zy.cur,limit=1] zy.tier matches 3.. run effect give @s minecraft:hunger 2 9 true
execute unless score @a[tag=zy.cur,limit=1] zy.food matches 20.. run scoreboard players add @a[tag=zy.cur,limit=1] zy.gain 3
execute if score @a[tag=zy.cur,limit=1] zy.tier matches 5.. unless entity @s[tag=zy.starved] run function zy:type/sustenance/famine
particle dust{color:[0.84,0.55,0.25],scale:1.0} ~ ~1 ~ 0.3 0.4 0.3 0 6 force
