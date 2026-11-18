scoreboard players set @s zy.charge 100
scoreboard players set @s zy.cmode 1
function zy:msg/charge_seal
execute if score @s zy.a11 matches 1 run scoreboard players set @s zy.charge 200
playsound zy:net.confirm player @s ~ ~ ~ 0.4 2
playsound zy:net.anchor player @s ~ ~ ~ 0.5 1.6
function zy:hud/state
