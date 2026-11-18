tag @s add zy.dormant
tag @s remove zy.mine
scoreboard players set @s zy.dorm 0
scoreboard players set @s zy.over 0
scoreboard players set #mode zy.tmp 2
function zy:ring/recolor
playsound zy:net.down player @a ~ ~ ~ 0.8 1.8
particle minecraft:smoke ~ ~0.3 ~ 0.4 0.1 0.4 0.01 12
function zy:msg/signal_lost
