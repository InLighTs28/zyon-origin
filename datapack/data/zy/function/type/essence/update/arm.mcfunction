attribute @s minecraft:generic.armor modifier remove zy:essence_armor
scoreboard players operation @s zy.earm = #arm zy.tmp
scoreboard players operation #v zy.tmp = #arm zy.tmp
function zy:util/dec
execute if score #v zy.tmp matches 1.. run function zy:type/essence/apply/arm with storage zy:m dec
