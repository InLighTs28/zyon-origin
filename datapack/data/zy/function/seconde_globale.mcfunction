scoreboard players set #t zy.t 0
execute as @e[tag=zy.m] run function zy:sceau/verifier_proprio
tag @e[tag=zy.allume,predicate=!zy:en_feu] remove zy.allume
