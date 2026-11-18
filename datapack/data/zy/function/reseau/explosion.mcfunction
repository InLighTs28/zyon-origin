execute store result storage zy:m s.d int 1 run scoreboard players get @a[tag=zy.cur,limit=1] zy.sur
particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 0 1 force
particle dust{color:[0.94,0.16,0.16],scale:2.0} ~ ~1 ~ 1.5 1 1.5 0 80 force
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1.2 1.3
execute as @e[distance=..3,type=!#zy:inerte] run function zy:reseau/souffle with storage zy:m s
function zy:sceau/retirer
