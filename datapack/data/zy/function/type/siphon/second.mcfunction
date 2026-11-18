scoreboard players set #g zy.tmp 3
execute if entity @s[type=#zy:hostile] run scoreboard players set #g zy.tmp 5
execute if entity @s[type=#zy:colossus] run scoreboard players set #g zy.tmp 10
execute if entity @s[type=player] run scoreboard players set #g zy.tmp 5
scoreboard players operation #g zy.tmp *= @a[tag=zy.cur,limit=1] zy.mul
scoreboard players operation #g zy.tmp *= @s zy.eff
scoreboard players operation #g zy.tmp /= #100 zy.tmp
scoreboard players operation #g zy.tmp /= #10 zy.tmp
execute if entity @s[tag=zy.resist] run return 0
execute if score @a[tag=zy.cur,limit=1] zy.a8 matches 1 run scoreboard players operation #g zy.tmp *= #k5 zy.tmp
execute if score @a[tag=zy.cur,limit=1] zy.a8 matches 1 run scoreboard players operation #g zy.tmp /= #k4 zy.tmp
effect give @a[tag=zy.cur,limit=1] minecraft:regeneration 2 0 true
scoreboard players add @a[tag=zy.cur,limit=1] zy.sync 1
execute if score @a[tag=zy.cur,limit=1] zy.p1 matches 0 if score @a[tag=zy.cur,limit=1] zy.food matches 10.. run return 0
execute if score @a[tag=zy.cur,limit=1] zy.p1 matches 1 if score @a[tag=zy.cur,limit=1] zy.food matches 14.. run return 0
execute if score @a[tag=zy.cur,limit=1] zy.p1 matches 2 if score @a[tag=zy.cur,limit=1] zy.food matches 18.. run return 0
execute if score @a[tag=zy.cur,limit=1] zy.p1 matches 3 if score @a[tag=zy.cur,limit=1] zy.food matches 20.. run return 0
scoreboard players operation #k zy.tmp = @a[tag=zy.cur,limit=1] zy.p0
scoreboard players operation #g zy.tmp *= #k zy.tmp
scoreboard players set #k zy.tmp 4
scoreboard players operation #g zy.tmp /= #k zy.tmp
scoreboard players operation @a[tag=zy.cur,limit=1] zy.gain += #g zy.tmp
scoreboard players operation @a[tag=zy.cur,limit=1] zy.res += #g zy.tmp
scoreboard players operation @s zy.given += #g zy.tmp
execute if entity @s[type=player] run effect give @s minecraft:hunger 2 9 true
execute unless entity @s[type=player] run effect give @s minecraft:slowness 2 0 true
particle dust{color:[0.65,0.41,0.94],scale:1.2} ~ ~1 ~ 0.3 0.4 0.3 0 10 force
scoreboard players set #cap zy.tmp 60
execute if entity @s[type=#zy:hostile] run scoreboard players set #cap zy.tmp 150
execute if entity @s[type=#zy:colossus] run scoreboard players set #cap zy.tmp 150
execute unless entity @s[type=player] if score @s zy.given >= #cap zy.tmp run function zy:type/siphon/exhaust
