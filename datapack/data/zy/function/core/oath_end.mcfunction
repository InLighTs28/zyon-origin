execute as @e[tag=zy.mine,tag=!zy.cur] at @s run function zy:seal/release
execute as @e[tag=zy.mine] run function zy:seal/clear
function zy:type/essence/clean
scoreboard players add @s zy.cost 150
scoreboard players set @s zy.lock 1200
execute if score @s zy.a13 matches 1 run scoreboard players set @s zy.lock 600
playsound zy:net.burst player @a ~ ~ ~ 1 0.7
particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 0 1 force
function zy:msg/oath_end
