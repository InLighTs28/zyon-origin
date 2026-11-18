tag @s add zy.s6
tag @s add zy.fxp6
scoreboard players set #type zy.tmp 6
function zy:fx/scan/essence
particle minecraft:electric_spark ~ ~0.3 ~ 0.5 0.1 0.5 0.3 20 force
particle minecraft:end_rod ~ ~0.1 ~ 0.3 0 0.3 0.02 6 force
playsound zy:net.confirm player @a ~ ~ ~ 0.7 2
playsound zy:seal.place player @a ~ ~ ~ 0.5 1.7
playsound zy:ui.blip player @a ~ ~ ~ 0.5 1.4
scoreboard players set @a[tag=zy.cur,limit=1] zy.note 39
scoreboard players set @a[tag=zy.cur,limit=1] zy.msg 30
