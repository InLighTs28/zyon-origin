data modify storage zy:m t set value {s:"",g:""}
execute as @e[tag=zy.lie,limit=1] run function zy:marque/glyphes
function zy:marque/texte with storage zy:m t
data modify entity @s view_range set value 1.0f
execute if entity @e[tag=zy.lie,tag=zy.s5,limit=1] run data modify entity @s view_range set value 0.0f
tag @e[tag=zy.lie] remove zy.maj
