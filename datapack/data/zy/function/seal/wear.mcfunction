execute unless score @s zy.integ matches -100000.. run scoreboard players set @s zy.integ 120
scoreboard players remove @s zy.integ 1
execute if score #idle zy.tmp matches 1 run scoreboard players remove @s zy.integ 1
execute if score @s zy.integ matches 20 run function zy:msg/unstable
execute if score @s zy.integ matches 1..20 run particle minecraft:dust{color:[1.0,0.75,0.2],scale:0.8} ~ ~0.15 ~ 0.4 0 0.4 0 3 force
execute if score @s zy.integ matches ..0 run function zy:network/collapse
