# per ZyoN player, every tick (core/tick)
function zy:emitter/tier
execute if score @s zy.etier matches 0 run return run function zy:emitter/none
execute if score @s zy.etier matches 1 run scoreboard players set #emax zy.tmp 2
execute if score @s zy.etier matches 1 run scoreboard players set #erec zy.tmp 200
execute if score @s zy.etier matches 1 run scoreboard players set #erng zy.tmp 12
execute if score @s zy.etier matches 1 run scoreboard players set #ecost zy.tmp 20
execute if score @s zy.etier matches 2 run scoreboard players set #emax zy.tmp 3
execute if score @s zy.etier matches 2 run scoreboard players set #erec zy.tmp 160
execute if score @s zy.etier matches 2 run scoreboard players set #erng zy.tmp 16
execute if score @s zy.etier matches 2 run scoreboard players set #ecost zy.tmp 20
execute if score @s zy.etier matches 3 run scoreboard players set #emax zy.tmp 3
execute if score @s zy.etier matches 3 run scoreboard players set #erec zy.tmp 140
execute if score @s zy.etier matches 3 run scoreboard players set #erng zy.tmp 20
execute if score @s zy.etier matches 3 run scoreboard players set #ecost zy.tmp 15
execute if score @s zy.etier matches 4 run scoreboard players set #emax zy.tmp 4
execute if score @s zy.etier matches 4 run scoreboard players set #erec zy.tmp 100
execute if score @s zy.etier matches 4 run scoreboard players set #erng zy.tmp 24
execute if score @s zy.etier matches 4 run scoreboard players set #ecost zy.tmp 10
execute unless score @s zy.epk matches 0.. run scoreboard players operation @s zy.epk = #emax zy.tmp
execute if score @s zy.epk > #emax zy.tmp run scoreboard players operation @s zy.epk = #emax zy.tmp
execute if score @s zy.epk < #emax zy.tmp run function zy:emitter/recharge
execute if score @s zy.use matches 1.. run function zy:emitter/try
scoreboard players set @s zy.use 0
function zy:emitter/ui
