scoreboard players set @s zy.charge 100
scoreboard players set @s zy.cmode 2
function zy:msg/charge_shatter
execute if score @s zy.a11 matches 1 run scoreboard players set @s zy.charge 200
playsound zy:seal.charge player @s ~ ~ ~ 0.5 1.4
function zy:hud/state
function zy:aim/shatter
