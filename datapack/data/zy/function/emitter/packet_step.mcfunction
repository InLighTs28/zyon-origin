tp @s ^ ^ ^0.5
scoreboard players remove @s zy.pstep 1
execute at @s unless block ~ ~ ~ #zy:packet_pass run return run function zy:emitter/packet_fizzle
scoreboard players operation #po zy.tmp = @s zy.owner
execute at @s positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,dy=0,dz=0,type=!#zy:inert,tag=!zy.pkt] unless score @s zy.id = #po zy.tmp unless entity @s[gamemode=spectator] run tag @s add zy.pcand
execute if entity @e[tag=zy.pcand,limit=1] at @s run return run function zy:emitter/packet_hit
execute if score @s zy.pstep matches ..0 at @s run function zy:emitter/packet_fizzle
