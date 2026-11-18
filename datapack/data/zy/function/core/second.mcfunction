scoreboard players set @s zy.sec 0
execute unless entity @s[tag=zy.adv] run function zy:adv/init
function zy:rcon/defaults
function zy:core/half
execute store result score @s zy.food run data get entity @s foodLevel
function zy:network/links
execute as @e[tag=zy.mine] run function zy:mr/calc
function zy:network/cables
execute as @e[tag=zy.mine,tag=zy.s0] at @s run function zy:type/siphon/second
execute as @e[tag=zy.mine,tag=zy.s2] at @s run particle minecraft:dust{color:[1.0,0.59,0.16],scale:0.6} ~ ~0.1 ~ 0.3 0 0.3 0 2 force
execute if entity @e[tag=zy.mine,tag=zy.s4,limit=1] run function zy:type/alteration/second
execute if score @s zy.p13 matches 0 as @e[tag=zy.mine,tag=zy.s5] run function zy:type/perception/erase
execute if score @s zy.p13 matches 1 as @e[tag=zy.mine,tag=zy.s5,tag=zy.ghosted] run function zy:type/perception/clean
execute if score @s zy.p14 matches 0 as @e[tag=zy.mine,tag=zy.s8,tag=!zy.resist] run function zy:type/perception/reveal
function zy:type/essence/second
execute as @e[tag=zy.mine,scores={zy.acc=1..}] run function zy:type/life/decay
execute if score @s zy.tier matches 3.. if score @s zy.p16 matches 0 as @e[tag=zy.mine,tag=!zy.cur] at @s run function zy:network/overload_check
function zy:core/count
function zy:core/upkeep
function zy:core/pressure
function zy:aug/points
