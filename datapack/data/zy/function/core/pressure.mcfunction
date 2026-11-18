scoreboard players remove @s zy.sync 3
execute if score @s zy.sync matches ..-1 run scoreboard players set @s zy.sync 0
execute if score @s zy.sync matches 101.. run scoreboard players set @s zy.sync 100
execute if score @s zy.sync matches 1.. run scoreboard players set @s zy.idle 0
execute if score @s zy.sync matches 0 run scoreboard players add @s zy.idle 1
execute if score @s zy.idle matches 10.. run function zy:core/drift
scoreboard players set #idle zy.tmp 0
execute if score @s zy.idle matches 10.. run scoreboard players set #idle zy.tmp 1
execute as @e[tag=zy.mine,tag=zy.m] at @s run function zy:seal/wear
execute if score @s zy.food matches 1..6 run function zy:core/critical
execute if score @s zy.food matches 7.. run scoreboard players set @s zy.crit 0
execute if score @s zy.food matches ..0 if score @s zy.ntot matches 1.. run function zy:core/blackout
execute if score @s zy.count matches 1.. if score @s zy.count >= @s zy.cap unless score @s zy.a1 matches 1 run effect give @s minecraft:slowness 2 0 true
execute if score @s zy.count matches 1.. if score @s zy.count >= @s zy.cap unless score @s zy.a1 matches 1 run effect give @s minecraft:mining_fatigue 2 0 true
execute if score @s zy.ntot matches 1.. run scoreboard players remove @s zy.sigt 1
execute if score @s zy.sigt matches ..0 run function zy:core/signature
execute if score @s zy.ntot matches 1.. run scoreboard players remove @s zy.evcd 1
execute if score @s zy.evcd matches ..0 run function zy:ev/start
execute as @e[tag=zy.owned,scores={zy.evt=1..}] at @s run function zy:ev/tick
