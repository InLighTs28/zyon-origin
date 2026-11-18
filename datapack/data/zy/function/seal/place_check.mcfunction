execute unless entity @e[tag=zy.tgt,limit=1] run tag @s add zy.tgt
execute as @e[tag=zy.tgt,limit=1] unless data entity @s Health run return run function zy:msg/not_living
execute if entity @e[tag=zy.tgt,type=#zy:inert] run return run function zy:msg/not_living
execute if score @s zy.lock matches 1.. unless score @s zy.sel matches 0 run return run function zy:msg/locked_oath
function zy:seal/required
execute if score @s zy.tier < #req zy.tmp run return run function zy:msg/locked_tier
execute if entity @s[tag=zy.tgt] unless score @s zy.sel matches 1 unless score @s zy.sel matches 4 unless score @s zy.sel matches 5 run return run function zy:msg/not_self
execute as @e[tag=zy.tgt,tag=zy.m,limit=1] unless score @s zy.owner = #o zy.tmp run return run function zy:msg/foreign
execute if score @s zy.sel matches 0 if entity @e[tag=zy.tgt,scores={zy.drained=1..}] run return run function zy:msg/drained
function zy:seal/has_it
execute if score #d zy.tmp matches 1 run return run function zy:seal/refresh
execute as @e[tag=zy.tgt,limit=1] run function zy:seal/stack
execute if score @e[tag=zy.tgt,limit=1] zy.stack matches 4.. run return run function zy:msg/saturated
execute if score @s zy.tier matches ..2 if score @e[tag=zy.tgt,limit=1] zy.stack matches 3.. run return run function zy:msg/saturated
execute if score @s zy.p16 matches 1 if score @e[tag=zy.tgt,limit=1] zy.stack matches 3.. run return run function zy:msg/saturated
execute if score @s zy.sel matches 0 if score @s zy.siphons matches 2.. unless score @s zy.a8 matches 1 run return run function zy:msg/full_siphon
execute if score @s zy.sel matches 0 if score @s zy.siphons matches 3.. run return run function zy:msg/full_siphon
execute unless score @s zy.sel matches 0 if score @s zy.count >= @s zy.cap run return run function zy:msg/full
execute unless entity @s[tag=zy.tgt] as @e[tag=zy.tgt,limit=1] run function zy:mr/calc
execute unless entity @s[tag=zy.tgt] if entity @e[tag=zy.tgt,tag=zy.reject,limit=1] run return run function zy:seal/rejected
execute as @e[tag=zy.tgt,limit=1] at @s run function zy:seal/apply
return 1
