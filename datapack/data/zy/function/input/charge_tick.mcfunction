scoreboard players remove @s zy.charge 1
scoreboard players operation #ph zy.tmp = @s zy.charge
scoreboard players set #k zy.tmp 3
scoreboard players operation #ph zy.tmp %= #k zy.tmp
execute if score #ph zy.tmp matches 0 if score @s zy.cmode matches 1 anchored eyes positioned ^-0.35 ^-0.45 ^0.6 run particle minecraft:dust{color:[0.35,0.9,1.0],scale:0.5} ~ ~ ~ 0.05 0.05 0.05 0 2
execute if score #ph zy.tmp matches 0 if score @s zy.cmode matches 2 anchored eyes positioned ^-0.35 ^-0.45 ^0.6 run particle minecraft:dust{color:[1.0,0.3,0.3],scale:0.5} ~ ~ ~ 0.05 0.05 0.05 0 2
execute if score @s zy.charge matches 0 run function zy:input/charge_lost
