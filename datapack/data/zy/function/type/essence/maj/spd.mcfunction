attribute @s minecraft:generic.movement_speed modifier remove zy:ess_vitesse
scoreboard players operation @s zy.espd = #spd zy.tmp
scoreboard players operation #v zy.tmp = #spd zy.tmp
function zy:util/dec
execute if score #v zy.tmp matches 1.. run function zy:type/essence/appliquer/spd with storage zy:m dec
