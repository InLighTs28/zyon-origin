# 1 block / tick in two 0.5-block steps
function zy:emitter/packet_step
execute if entity @s[tag=zy.pkt] at @s run function zy:emitter/packet_step
execute if entity @s[tag=zy.pkt] if score @s zy.cmode matches 2 at @s run particle minecraft:dust{color:[1.0,0.59,0.16],scale:0.7} ~ ~ ~ 0.05 0.05 0.05 0 2
execute if entity @s[tag=zy.pkt] unless score @s zy.cmode matches 2 at @s run particle minecraft:dust{color:[0.45,0.95,1.0],scale:0.7} ~ ~ ~ 0.05 0.05 0.05 0 2
