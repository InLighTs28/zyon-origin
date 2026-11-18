attribute @s minecraft:generic.attack_damage modifier remove zy:essence_strength
scoreboard players operation @s zy.eatk = #atk zy.tmp
scoreboard players operation #v zy.tmp = #atk zy.tmp
function zy:util/dec
execute if score #v zy.tmp matches 1.. run function zy:type/essence/apply/atk with storage zy:m dec
