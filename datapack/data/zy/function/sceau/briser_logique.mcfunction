execute unless entity @e[tag=zy.tgt,limit=1] run return run function zy:sceau/dissoudre
execute unless entity @e[tag=zy.tgt,tag=zy.mien,limit=1] run return run function zy:msg/pas_sceau
execute as @e[tag=zy.tgt,limit=1] at @s run function zy:sceau/liberer
execute as @e[tag=zy.tgt,limit=1] run function zy:sceau/retirer
function zy:msg/brise
