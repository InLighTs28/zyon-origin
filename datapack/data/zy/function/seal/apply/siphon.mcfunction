tag @s add zy.s0
tag @s add zy.fxp0
scoreboard players set #type zy.tmp 0
execute if entity @s[type=#zy:colossus] run advancement grant @a[tag=zy.cur,limit=1] only zy:zyon/colossus
function zy:fx/scan/siphon
particle minecraft:electric_spark ~ ~0.3 ~ 0.5 0.1 0.5 0.3 20 force
particle minecraft:end_rod ~ ~0.1 ~ 0.3 0 0.3 0.02 6 force
playsound zy:net.confirm player @a ~ ~ ~ 0.7 2
playsound zy:seal.place player @a ~ ~ ~ 0.5 1.7
playsound zy:ui.blip player @a ~ ~ ~ 0.5 1.4
scoreboard players set @a[tag=zy.cur,limit=1] zy.note 27
scoreboard players set @a[tag=zy.cur,limit=1] zy.msg 30
