attribute @s minecraft:generic.max_health modifier remove zy:essence_health
scoreboard players operation @s zy.ehp = #hp zy.tmp
scoreboard players operation #v zy.tmp = #hp zy.tmp
function zy:util/dec
execute if score #v zy.tmp matches 1.. run function zy:type/essence/apply/hp with storage zy:m dec
