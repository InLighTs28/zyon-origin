execute store result score @s zy.food run data get entity @s foodLevel
execute if score @s zy.tier matches 7.. if score @s zy.count matches 6.. unless score @s zy.oath matches 1.. run return run function zy:core/oath
execute if score @s zy.tier matches ..4 run return run function zy:msg/pulse_tier
execute if score @s zy.pulsecd matches 1.. run return run function zy:msg/pulse_cd
execute if score @s zy.food matches ..7 run return run function zy:msg/pulse_hunger
scoreboard players set @s zy.pulse 100
scoreboard players set @s zy.pulsecd 600
execute if score @s zy.a12 matches 1 run scoreboard players set @s zy.pulsecd 400
scoreboard players add @s zy.cost 60
playsound zy:net.surge player @a ~ ~ ~ 1 1.8
playsound zy:oath.break player @a ~ ~ ~ 0.4 1.8
particle minecraft:flash ~ ~1 ~ 0 0 0 0 1 force
particle minecraft:end_rod ~ ~1 ~ 0.5 0.8 0.5 0.08 40
function zy:msg/pulse
