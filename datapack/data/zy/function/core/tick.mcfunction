function zy:core/begin
execute if entity @s[tag=zy.holdp] run function zy:input/p_hold
execute if entity @s[tag=zy.conp] run function zy:rcon/hold
execute if score @s zy.charge matches 1.. run function zy:input/charge_tick
execute if entity @e[tag=zy.mine,tag=zy.s1,limit=1] run function zy:type/life/tick
execute as @e[tag=zy.mine,scores={zy.over=1..}] at @s run function zy:network/overload_tick
scoreboard players add @s zy.sec 1
execute if score @s zy.sec matches 10 run function zy:core/half
execute if score @s zy.sec matches 20.. run function zy:core/second
scoreboard players remove @s[scores={zy.pulse=1..}] zy.pulse 1
execute if score @s zy.oath matches 1 run function zy:core/oath_end
scoreboard players remove @s[scores={zy.oath=1..}] zy.oath 1
execute if score @s zy.oath matches 1.. run particle minecraft:reverse_portal ~ ~1 ~ 0.6 0.8 0.6 0.02 6
scoreboard players remove @s[scores={zy.lock=1..}] zy.lock 1
scoreboard players remove @s[scores={zy.msg=1..}] zy.msg 1
scoreboard players remove @s[scores={zy.pulsecd=1..}] zy.pulsecd 1
scoreboard players remove @s[scores={zy.esskeep=1..}] zy.esskeep 1
function zy:hud/chrono
function zy:emitter/tick
function zy:core/end
