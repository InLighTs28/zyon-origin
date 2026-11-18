execute store result score #n zy.tmp if entity @e[tag=zy.mien,tag=zy.s6,tag=!zy.cur]
execute if score #n zy.tmp matches 0 if score @s zy.ess matches ..0 run return run function zy:type/essence/nettoyer
execute if score #n zy.tmp matches 0 run return 0
scoreboard players set #arm zy.tmp 0
scoreboard players set #spd zy.tmp 0
scoreboard players set #atk zy.tmp 0
scoreboard players set #hp zy.tmp 0
execute as @e[tag=zy.mien,tag=zy.s6,tag=!zy.cur] run function zy:type/essence/lire
scoreboard players operation #arm zy.tmp *= #rate zy.tmp
scoreboard players operation #arm zy.tmp /= #100 zy.tmp
scoreboard players operation #spd zy.tmp *= #rate zy.tmp
scoreboard players operation #spd zy.tmp /= #100 zy.tmp
scoreboard players operation #atk zy.tmp *= #rate zy.tmp
scoreboard players operation #atk zy.tmp /= #100 zy.tmp
scoreboard players operation #hp zy.tmp *= #rate zy.tmp
scoreboard players operation #hp zy.tmp /= #100 zy.tmp
scoreboard players set #k zy.tmp 5
scoreboard players operation #spd zy.tmp /= #k zy.tmp
scoreboard players set #k zy.tmp 2
scoreboard players operation #atk zy.tmp /= #k zy.tmp
scoreboard players set #k zy.tmp 4
scoreboard players operation #hp zy.tmp /= #k zy.tmp
execute if score #arm zy.tmp matches 1201.. run scoreboard players set #arm zy.tmp 1200
execute if score #spd zy.tmp matches 5.. run scoreboard players set #spd zy.tmp 4
execute if score #atk zy.tmp matches 801.. run scoreboard players set #atk zy.tmp 800
execute if score #hp zy.tmp matches 2001.. run scoreboard players set #hp zy.tmp 2000
execute if score @s zy.pal matches ..5 run scoreboard players set #atk zy.tmp 0
execute if score @s zy.pal matches ..5 run scoreboard players set #hp zy.tmp 0
execute unless score #arm zy.tmp = @s zy.earm run function zy:type/essence/maj/arm
execute unless score #spd zy.tmp = @s zy.espd run function zy:type/essence/maj/spd
execute unless score #atk zy.tmp = @s zy.eatk run function zy:type/essence/maj/atk
execute unless score #hp zy.tmp = @s zy.ehp run function zy:type/essence/maj/hp
execute if score @s zy.pal matches 7.. if entity @e[tag=zy.mien,tag=zy.s6,type=#zy:ignifuge] run effect give @s minecraft:fire_resistance 2 0 true
execute if score @s zy.pal matches 7.. if entity @e[tag=zy.mien,tag=zy.s6,type=#zy:aquatique] run effect give @s minecraft:water_breathing 2 0 true
execute if score @s zy.pal matches 7.. if entity @e[tag=zy.mien,tag=zy.s6,type=#zy:aquatique] run effect give @s minecraft:dolphins_grace 2 0 true
execute if score @s zy.pal matches 7.. if entity @e[tag=zy.mien,tag=zy.s6,type=#zy:volant] unless predicate zy:accroupi run effect give @s minecraft:slow_falling 2 0 true
