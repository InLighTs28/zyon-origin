execute unless entity @e[tag=zy.tgt,limit=1] run tag @s add zy.tgt
execute as @e[tag=zy.tgt,limit=1] unless data entity @s Health run return run function zy:msg/invalide
execute if entity @e[tag=zy.tgt,type=#zy:inerte] run return run function zy:msg/invalide
function zy:sceau/portee_cible with storage zy:m r
execute if score #ok zy.tmp matches 0 run return run function zy:msg/loin
execute if score @s zy.lock matches 1.. unless score @s zy.sel matches 0 run return run function zy:msg/verrou
function zy:sceau/requis
execute if score @s zy.pal < #req zy.tmp run return run function zy:msg/verrouille
execute if entity @s[tag=zy.tgt] unless score @s zy.sel matches 1 unless score @s zy.sel matches 4 unless score @s zy.sel matches 5 run return run function zy:msg/soi
execute as @e[tag=zy.tgt,tag=zy.m,limit=1] unless score @s zy.own = #o zy.tmp run return run function zy:msg/autre
execute if score @s zy.sel matches 0 if entity @e[tag=zy.tgt,scores={zy.ep=1..}] run return run function zy:msg/epuise
function zy:sceau/deja
execute if score #d zy.tmp matches 1 run return run function zy:msg/deja
execute if score @s zy.sel matches 0 if score @s zy.ns matches 2.. run return run function zy:msg/plein_siphon
execute unless score @s zy.sel matches 0 if score @s zy.nb >= @s zy.cap run return run function zy:msg/plein
execute as @e[tag=zy.tgt,limit=1] at @s run function zy:sceau/poser
return 1
