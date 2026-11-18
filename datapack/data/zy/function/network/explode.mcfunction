advancement grant @a[tag=zy.cur,limit=1] only zy:zyon/overload
execute store result storage zy:m b.d int 1 run scoreboard players get @a[tag=zy.cur,limit=1] zy.blast
particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 0 1 force
particle dust{color:[1.00,0.24,0.24],scale:2.0} ~ ~1 ~ 1.5 1 1.5 0 80 force
particle minecraft:sonic_boom ~ ~0.5 ~ 0 0 0 0 1 force
particle minecraft:flash ~ ~0.5 ~ 0 0 0 0 1 force
playsound zy:oath.break player @a ~ ~ ~ 0.8 1.4
playsound zy:net.burst player @a ~ ~ ~ 1 1.5
execute as @e[distance=..3,type=!#zy:inert] run function zy:network/blast with storage zy:m b
function zy:seal/clear
