scoreboard players add @s zy.crit 1
execute if score @s zy.crit matches 1 run function zy:msg/critical
scoreboard players operation #c zy.tmp = @s zy.crit
scoreboard players set #k zy.tmp 3
scoreboard players operation #c zy.tmp %= #k zy.tmp
execute if score #c zy.tmp matches 0 run damage @s 1 zy:backlash
scoreboard players operation #c zy.tmp = @s zy.crit
scoreboard players set #k zy.tmp 5
scoreboard players operation #c zy.tmp %= #k zy.tmp
execute if score #c zy.tmp matches 0 as @e[tag=zy.mine,tag=!zy.cur,tag=!zy.dormant,sort=furthest,limit=1] at @s run function zy:network/sleep
