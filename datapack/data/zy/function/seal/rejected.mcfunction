execute as @e[tag=zy.tgt,limit=1] at @s run particle minecraft:dust{color:[1.0,0.3,0.3],scale:1.2} ~ ~1 ~ 0.4 0.6 0.4 0 20 force
execute as @e[tag=zy.tgt,limit=1] at @s run playsound zy:seal.resist player @a ~ ~ ~ 0.4 2
function zy:msg/resisted
