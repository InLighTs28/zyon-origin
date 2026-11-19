scoreboard players set @s zy.ehit 0
tag @e[tag=zy.ptgt] add zy.tgt
tag @e[tag=zy.ptgt] remove zy.ptgt
execute if entity @e[tag=zy.tgt,limit=1] run function zy:seal/touch
execute unless entity @e[tag=zy.tgt,limit=1] run scoreboard players set @s zy.charge 0
