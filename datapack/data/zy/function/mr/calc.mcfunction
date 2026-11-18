scoreboard players set @s zy.mr 0
tag @s remove zy.resist
tag @s remove zy.reject
execute if predicate zy:mr/head_1 run scoreboard players add @s zy.mr 6
execute if predicate zy:mr/head_2 run scoreboard players add @s zy.mr 6
execute if predicate zy:mr/head_3 run scoreboard players add @s zy.mr 6
execute if predicate zy:mr/head_4 run scoreboard players add @s zy.mr 6
execute if predicate zy:mr/chest_1 run scoreboard players add @s zy.mr 6
execute if predicate zy:mr/chest_2 run scoreboard players add @s zy.mr 6
execute if predicate zy:mr/chest_3 run scoreboard players add @s zy.mr 6
execute if predicate zy:mr/chest_4 run scoreboard players add @s zy.mr 6
execute if predicate zy:mr/legs_1 run scoreboard players add @s zy.mr 6
execute if predicate zy:mr/legs_2 run scoreboard players add @s zy.mr 6
execute if predicate zy:mr/legs_3 run scoreboard players add @s zy.mr 6
execute if predicate zy:mr/legs_4 run scoreboard players add @s zy.mr 6
execute if predicate zy:mr/feet_1 run scoreboard players add @s zy.mr 6
execute if predicate zy:mr/feet_2 run scoreboard players add @s zy.mr 6
execute if predicate zy:mr/feet_3 run scoreboard players add @s zy.mr 6
execute if predicate zy:mr/feet_4 run scoreboard players add @s zy.mr 6
execute if entity @s[type=minecraft:witch] run scoreboard players add @s zy.mr 40
execute if entity @s[type=minecraft:evoker] run scoreboard players add @s zy.mr 50
execute if entity @s[type=minecraft:illusioner] run scoreboard players add @s zy.mr 50
execute if entity @s[type=minecraft:vex] run scoreboard players add @s zy.mr 30
execute if entity @s[type=minecraft:warden] run scoreboard players add @s zy.mr 60
execute if entity @s[type=minecraft:elder_guardian] run scoreboard players add @s zy.mr 50
execute if entity @s[type=minecraft:wither] run scoreboard players add @s zy.mr 75
execute if entity @s[type=minecraft:ender_dragon] run scoreboard players add @s zy.mr 75
execute if entity @s[type=minecraft:breeze] run scoreboard players add @s zy.mr 30
execute if entity @s[type=minecraft:shulker] run scoreboard players add @s zy.mr 35
execute if score @a[tag=zy.cur,limit=1] zy.a14 matches 1 run scoreboard players remove @s zy.mr 25
execute if score @s zy.mr matches ..-1 run scoreboard players set @s zy.mr 0
execute if score @s zy.mr matches 76.. run scoreboard players set @s zy.mr 75
execute unless score @s zy.sig matches 1.. run scoreboard players set @s zy.sig 100
scoreboard players set #k zy.tmp 100
scoreboard players operation #k zy.tmp -= @s zy.mr
scoreboard players operation @s zy.eff = @s zy.sig
scoreboard players operation @s zy.eff *= #k zy.tmp
scoreboard players operation @s zy.eff /= #100 zy.tmp
execute if score @s zy.mr matches 1.. store result score #r zy.tmp run random value 1..100
execute if score @s zy.mr matches 1.. if score #r zy.tmp <= @s zy.mr run tag @s add zy.resist
execute if score @s zy.mr matches 1.. run scoreboard players operation #r zy.tmp += #r zy.tmp
execute if score @s zy.mr matches 1.. if score #r zy.tmp <= @s zy.mr run tag @s add zy.reject
execute if entity @s[tag=zy.resist] at @s run particle minecraft:dust{color:[1.0,0.35,0.35],scale:0.7} ~ ~1 ~ 0.3 0.5 0.3 0 3 force
