execute if score @s zy.tier matches 0 run scoreboard players operation @s zy.rpct = @s zy.res
execute if score @s zy.tier matches 0 run scoreboard players remove @s zy.rpct 0
execute if score @s zy.tier matches 0 run scoreboard players operation @s zy.rpct *= #100 zy.tmp
execute if score @s zy.tier matches 0 run scoreboard players set #k zy.tmp 2000
execute if score @s zy.tier matches 0 run scoreboard players operation @s zy.rpct /= #k zy.tmp
execute if score @s zy.tier matches 1 run scoreboard players operation @s zy.rpct = @s zy.res
execute if score @s zy.tier matches 1 run scoreboard players remove @s zy.rpct 2000
execute if score @s zy.tier matches 1 run scoreboard players operation @s zy.rpct *= #100 zy.tmp
execute if score @s zy.tier matches 1 run scoreboard players set #k zy.tmp 4000
execute if score @s zy.tier matches 1 run scoreboard players operation @s zy.rpct /= #k zy.tmp
execute if score @s zy.tier matches 2 run scoreboard players operation @s zy.rpct = @s zy.res
execute if score @s zy.tier matches 2 run scoreboard players remove @s zy.rpct 6000
execute if score @s zy.tier matches 2 run scoreboard players operation @s zy.rpct *= #100 zy.tmp
execute if score @s zy.tier matches 2 run scoreboard players set #k zy.tmp 9000
execute if score @s zy.tier matches 2 run scoreboard players operation @s zy.rpct /= #k zy.tmp
execute if score @s zy.tier matches 3 run scoreboard players operation @s zy.rpct = @s zy.res
execute if score @s zy.tier matches 3 run scoreboard players remove @s zy.rpct 15000
execute if score @s zy.tier matches 3 run scoreboard players operation @s zy.rpct *= #100 zy.tmp
execute if score @s zy.tier matches 3 run scoreboard players set #k zy.tmp 15000
execute if score @s zy.tier matches 3 run scoreboard players operation @s zy.rpct /= #k zy.tmp
execute if score @s zy.tier matches 4 run scoreboard players operation @s zy.rpct = @s zy.res
execute if score @s zy.tier matches 4 run scoreboard players remove @s zy.rpct 30000
execute if score @s zy.tier matches 4 run scoreboard players operation @s zy.rpct *= #100 zy.tmp
execute if score @s zy.tier matches 4 run scoreboard players set #k zy.tmp 20000
execute if score @s zy.tier matches 4 run scoreboard players operation @s zy.rpct /= #k zy.tmp
execute if score @s zy.tier matches 5 run scoreboard players operation @s zy.rpct = @s zy.res
execute if score @s zy.tier matches 5 run scoreboard players remove @s zy.rpct 50000
execute if score @s zy.tier matches 5 run scoreboard players operation @s zy.rpct *= #100 zy.tmp
execute if score @s zy.tier matches 5 run scoreboard players set #k zy.tmp 30000
execute if score @s zy.tier matches 5 run scoreboard players operation @s zy.rpct /= #k zy.tmp
execute if score @s zy.tier matches 6 run scoreboard players operation @s zy.rpct = @s zy.res
execute if score @s zy.tier matches 6 run scoreboard players remove @s zy.rpct 80000
execute if score @s zy.tier matches 6 run scoreboard players operation @s zy.rpct *= #100 zy.tmp
execute if score @s zy.tier matches 6 run scoreboard players set #k zy.tmp 40000
execute if score @s zy.tier matches 6 run scoreboard players operation @s zy.rpct /= #k zy.tmp
execute if score @s zy.tier matches 7.. run scoreboard players set @s zy.rpct 100
scoreboard players operation @s zy.lpct = @s zy.count
scoreboard players operation @s zy.lpct *= #100 zy.tmp
scoreboard players operation @s zy.lpct /= @s zy.cap
execute if score @s zy.sel matches 0 run scoreboard players operation @s zy.lpct = @s zy.siphons
execute if score @s zy.sel matches 0 run scoreboard players operation @s zy.lpct *= #100 zy.tmp
execute if score @s zy.sel matches 0 run scoreboard players set #k zy.tmp 2
execute if score @s zy.sel matches 0 run scoreboard players operation @s zy.lpct /= #k zy.tmp
scoreboard players set @s zy.ppct 0
execute if score @s zy.pulse matches 1.. run scoreboard players operation @s zy.ppct = @s zy.pulse
execute if score @s zy.oath matches 1.. run scoreboard players operation @s zy.ppct = @s zy.oath
execute if score @s zy.oath matches 1.. run scoreboard players operation @s zy.ppct *= #10 zy.tmp
execute if score @s zy.oath matches 1.. run scoreboard players set #k zy.tmp 16
execute if score @s zy.oath matches 1.. run scoreboard players operation @s zy.ppct /= #k zy.tmp
function zy:hud/state
