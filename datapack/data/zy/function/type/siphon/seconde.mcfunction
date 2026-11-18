scoreboard players set #g zy.tmp 3
execute if entity @s[type=#zy:hostile] run scoreboard players set #g zy.tmp 5
execute if entity @s[type=#zy:colosse] run scoreboard players set #g zy.tmp 10
execute if entity @s[type=player] run scoreboard players set #g zy.tmp 5
scoreboard players operation #g zy.tmp *= @a[tag=zy.cur,limit=1] zy.mul
scoreboard players operation #g zy.tmp /= #10 zy.tmp
execute if score @a[tag=zy.cur,limit=1] zy.food matches 20.. run return 0
scoreboard players operation @a[tag=zy.cur,limit=1] zy.fg += #g zy.tmp
scoreboard players operation @a[tag=zy.cur,limit=1] zy.res += #g zy.tmp
scoreboard players operation @s zy.gv += #g zy.tmp
execute if entity @s[type=player] run effect give @s minecraft:hunger 2 9 true
execute unless entity @s[type=player] run effect give @s minecraft:slowness 2 0 true
particle dust{color:[0.65,0.41,0.94],scale:1.2} ~ ~1 ~ 0.3 0.4 0.3 0 10 force
execute facing entity @a[tag=zy.cur,limit=1] eyes positioned ^ ^1 ^1 run particle minecraft:portal ~ ~ ~ 0.1 0.1 0.1 0.6 8
scoreboard players set #cap zy.tmp 60
execute if entity @s[type=#zy:hostile] run scoreboard players set #cap zy.tmp 150
execute if entity @s[type=#zy:colosse] run scoreboard players set #cap zy.tmp 150
execute unless entity @s[type=player] if score @s zy.gv >= #cap zy.tmp run function zy:type/siphon/epuiser
