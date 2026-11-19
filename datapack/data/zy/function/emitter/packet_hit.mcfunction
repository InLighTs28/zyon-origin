tag @e[tag=zy.pcand,sort=nearest,limit=1] add zy.ptgt
tag @e[tag=zy.pcand] remove zy.pcand
scoreboard players operation #po zy.tmp = @s zy.owner
scoreboard players operation #pm zy.tmp = @s zy.cmode
execute as @a[tag=zy.z] if score @s zy.id = #po zy.tmp run function zy:emitter/owner_hit
particle minecraft:flash ~ ~ ~ 0 0 0 0 1
playsound zy:emitter.hit player @a ~ ~ ~ 0.9 1
tag @s remove zy.pkt
kill @s
