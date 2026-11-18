scoreboard players set @s zy.drained 3600
scoreboard players set @s zy.given 0
tag @s remove zy.s0
scoreboard players set #type zy.tmp 0
function zy:ring/remove_type
function zy:seal/clear_if_empty
particle minecraft:smoke ~ ~1 ~ 0.3 0.5 0.3 0.02 20
function zy:msg/source_drained
