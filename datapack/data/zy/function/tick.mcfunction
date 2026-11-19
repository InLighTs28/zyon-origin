scoreboard players add #t zy.t 1
scoreboard players operation #sw zy.tmp = #t zy.t
scoreboard players operation #sw zy.tmp %= #k20 zy.tmp
execute if score #sw zy.tmp matches 0 as @e[tag=zy.m] run function zy:core/sweep
execute as @a[scores={zy.death=1..}] run function zy:core/death
execute as @a[tag=zy.z] run function zy:core/heartbeat
execute as @a[tag=zy.z] at @s run function zy:core/tick
execute as @a[scores={zy.cfg=1..}] run function zy:cfg/run
execute as @e[type=item_display,tag=zy.ring] run function zy:ring/follow
execute as @e[type=item_display,tag=zy.pkt] at @s run function zy:emitter/packet_tick
execute if score #t zy.t matches 20.. run function zy:global_second
