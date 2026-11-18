tag @e[tag=zy.owned] remove zy.live
tag @e[tag=zy.owned] remove zy.viarel
tag @s add zy.live
scoreboard players set @s zy.hop -1
scoreboard players set #rm zy.tmp 100
execute if score @s zy.tier matches 1.. run scoreboard players set #rm zy.tmp 150
execute if score @s zy.tier matches 5.. run scoreboard players set #rm zy.tmp 200
scoreboard players operation #r2 zy.tmp = @s zy.range
scoreboard players operation #r2 zy.tmp *= #rm zy.tmp
scoreboard players operation #r2 zy.tmp /= #100 zy.tmp
scoreboard players operation #k zy.tmp = @s zy.p12
scoreboard players add #k zy.tmp 2
scoreboard players operation #r2 zy.tmp *= #k zy.tmp
scoreboard players set #k zy.tmp 4
scoreboard players operation #r2 zy.tmp /= #k zy.tmp
execute if score #r2 zy.tmp < @s zy.range run scoreboard players operation #r2 zy.tmp = @s zy.range
execute store result storage zy:m r.r2 int 1 run scoreboard players get #r2 zy.tmp
function zy:network/spread with storage zy:m r
function zy:network/spread with storage zy:m r
function zy:network/spread with storage zy:m r
function zy:network/spread with storage zy:m r
function zy:network/spread with storage zy:m r
function zy:network/spread with storage zy:m r
execute as @e[tag=zy.owned,tag=!zy.live,tag=!zy.dormant] at @s run function zy:network/sleep
execute as @e[tag=zy.owned,tag=zy.live,tag=zy.dormant] at @s run function zy:network/wake
execute as @e[tag=zy.owned,tag=zy.dormant] at @s run function zy:network/dormant_tick
function zy:network/relay_check with storage zy:m r
scoreboard players set @s zy.sigmin 100
execute as @e[tag=zy.live,tag=!zy.cur] run function zy:network/signal
tag @e[tag=zy.live] remove zy.live
