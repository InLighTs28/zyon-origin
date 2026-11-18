scoreboard players set @s zy.view 1
execute if entity @s[tag=zy.hudoff] run scoreboard players set @s zy.view 0
scoreboard players operation @s zy.ntot = @s zy.count
scoreboard players operation @s zy.ntot += @s zy.siphons
execute store result score @s zy.food run data get entity @s foodLevel
scoreboard players operation @s zy.flux10 = @s zy.food
scoreboard players set #k zy.tmp 2
scoreboard players operation @s zy.flux10 /= #k zy.tmp
scoreboard players operation @s zy.res10 = @s zy.rpct
scoreboard players operation @s zy.res10 /= #10 zy.tmp
scoreboard players set @s zy.hold3 0
execute if score @s zy.hold matches 10.. run scoreboard players set @s zy.hold3 1
execute if score @s zy.hold matches 30.. run scoreboard players set @s zy.hold3 2
scoreboard players set #ch zy.tmp 0
execute if score @s zy.charge matches 1.. run scoreboard players operation #ch zy.tmp = @s zy.cmode
scoreboard players set @s zy.alert 0
execute if score @s zy.ndorm matches 1.. run scoreboard players set @s zy.alert 1
execute if score @s zy.food matches ..6 run scoreboard players set @s zy.alert 3
execute if score @s zy.hov matches 1.. run scoreboard players set @s zy.alert 2
scoreboard players set @s zy.mode 0
execute if score @s zy.lock matches 1.. run scoreboard players set @s zy.mode 3
execute if score @s zy.pulse matches 1.. run scoreboard players set @s zy.mode 1
execute if score @s zy.oath matches 1.. run scoreboard players set @s zy.mode 2
scoreboard players set @s zy.pready 0
execute if score @s zy.tier matches 5.. run scoreboard players set @s zy.pready 2
execute if score @s zy.tier matches 5.. if score @s zy.pulsecd matches 1.. run scoreboard players set @s zy.pready 1
scoreboard players set #used zy.tmp 0
scoreboard players operation #used zy.tmp = @s zy.count
execute if score #used zy.tmp matches 7.. run scoreboard players set #used zy.tmp 6
scoreboard players operation #sy zy.tmp = @s zy.sync
scoreboard players operation #sy zy.tmp /= #10 zy.tmp
apoli:resource operation @s zy:hud/sync = #sy zy.tmp
apoli:resource operation @s zy:hud/view = @s zy.view
apoli:resource operation @s zy:hud/flux = @s zy.flux10
apoli:resource operation @s zy:hud/res = @s zy.res10
apoli:resource operation @s zy:hud/tier = @s zy.tier
apoli:resource operation @s zy:hud/cap = @s zy.cap
apoli:resource operation @s zy:hud/used = #used zy.tmp
apoli:resource operation @s zy:hud/siph = @s zy.siphons
apoli:resource operation @s zy:hud/sel = @s zy.sel
apoli:resource operation @s zy:hud/charge = #ch zy.tmp
apoli:resource operation @s zy:hud/hold = @s zy.hold3
apoli:resource operation @s zy:hud/alert = @s zy.alert
apoli:resource operation @s zy:hud/mode = @s zy.mode
apoli:resource operation @s zy:hud/pready = @s zy.pready
apoli:resource operation @s zy:hud/dial = @s zy.dial
apoli:resource operation @s zy:hud/cons = @s zy.con
apoli:resource operation @s zy:hud/pcur = @s zy.pcur
