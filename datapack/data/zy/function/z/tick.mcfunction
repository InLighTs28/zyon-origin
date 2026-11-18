function zy:z/preparer
execute if entity @e[tag=zy.mien,tag=zy.s1,limit=1] run function zy:type/vie/tick
execute as @e[tag=zy.mien,scores={zy.ov=1..}] at @s run function zy:reseau/surcharge_tick
scoreboard players add @s zy.sec 1
execute if score @s zy.sec matches 10 run function zy:z/demi
execute if score @s zy.sec matches 20.. run function zy:z/seconde
execute if score @s zy.sec matches 5 run function zy:z/hud
execute if score @s zy.sec matches 15 run function zy:z/hud
scoreboard players remove @s[scores={zy.imp=1..}] zy.imp 1
execute if score @s zy.gs matches 1 run function zy:z/grand_serment_fin
scoreboard players remove @s[scores={zy.gs=1..}] zy.gs 1
execute if score @s zy.gs matches 1.. run particle minecraft:reverse_portal ~ ~1 ~ 0.6 0.8 0.6 0.02 6
scoreboard players remove @s[scores={zy.lock=1..}] zy.lock 1
scoreboard players remove @s[scores={zy.msg=1..}] zy.msg 1
scoreboard players remove @s[scores={zy.cdi=1..}] zy.cdi 1
scoreboard players remove @s[scores={zy.ess=1..}] zy.ess 1
function zy:z/finir
