attribute @s minecraft:generic.armor modifier remove zy:ess_armure
scoreboard players operation @s zy.earm = #arm zy.tmp
scoreboard players operation #v zy.tmp = #arm zy.tmp
function zy:util/dec
execute if score #v zy.tmp matches 1.. run function zy:type/essence/appliquer/arm with storage zy:m dec
