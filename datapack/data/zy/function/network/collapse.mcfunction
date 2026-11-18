function zy:network/backlash
scoreboard players add @a[tag=zy.cur,limit=1] zy.cost 20
execute at @a[tag=zy.cur,limit=1] run particle minecraft:electric_spark ~ ~1 ~ 0.3 0.6 0.3 0.4 30 force
execute at @a[tag=zy.cur,limit=1] run playsound zy:net.backlash player @a ~ ~ ~ 0.6 1.8
function zy:seal/clear
function zy:msg/backlash
advancement grant @a[tag=zy.cur,limit=1] only zy:zyon/collapse
