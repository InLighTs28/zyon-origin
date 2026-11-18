tag @s remove zy.s0
tag @s remove zy.s1
tag @s remove zy.s2
tag @s remove zy.s3
tag @s remove zy.s4
tag @s remove zy.s5
tag @s remove zy.s6
tag @s remove zy.s7
tag @s remove zy.s8
tag @s remove zy.m
tag @s remove zy.mine
function zy:ring/burst_all
tag @s remove zy.dormant
tag @s remove zy.owned
scoreboard players reset @s zy.owner
scoreboard players set @s zy.mom 0
scoreboard players set @s zy.over 0
scoreboard players set @s zy.acc 0
scoreboard players set @s zy.given 0
scoreboard players set @s zy.stack 0
execute if entity @s[tag=zy.ghosted] run function zy:type/perception/clean
tag @s remove zy.evspike
tag @s remove zy.evintr
scoreboard players reset @s zy.evt
scoreboard players reset @s zy.integ
