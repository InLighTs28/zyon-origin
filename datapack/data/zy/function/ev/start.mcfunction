execute store result score @s zy.evcd run random value 20..35
tag @e[tag=zy.mine,tag=!zy.cur,tag=!zy.dormant,scores={zy.evt=..0},sort=random,limit=1] add zy.evnew
execute unless entity @e[tag=zy.evnew,limit=1] run return 0
execute store result score #r zy.tmp run random value 1..100
execute if score @s zy.tier matches ..2 run scoreboard players set #r zy.tmp 100
execute if score #r zy.tmp matches ..35 as @e[tag=zy.evnew] run function zy:ev/intr_begin
execute if score #r zy.tmp matches 36.. as @e[tag=zy.evnew] run function zy:ev/spike_begin
tag @e[tag=zy.evnew] remove zy.evnew
