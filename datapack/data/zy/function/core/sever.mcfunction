function zy:core/begin
execute as @e[tag=zy.m] if score @s zy.owner = #o zy.tmp run function zy:seal/clear
function zy:type/essence/clean
function zy:core/end
scoreboard players add #next zy.id 1
scoreboard players operation @s zy.id = #next zy.id
scoreboard players set @s zy.charge 0
scoreboard players set @s zy.cmode 0
scoreboard players set @s zy.dial 0
scoreboard players set @s zy.con 0
scoreboard players set @s zy.ntot 0
scoreboard players set @s zy.ndorm 0
tag @s remove zy.holdp
tag @s remove zy.conp
function zy:core/stats
function zy:hud/update
