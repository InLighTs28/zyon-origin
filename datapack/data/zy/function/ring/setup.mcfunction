scoreboard players operation @s zy.uid = #uidv zy.tmp
scoreboard players operation @s zy.layer = #lay zy.tmp
scoreboard players operation @s zy.stype = #type zy.tmp
scoreboard players operation @s zy.rs = #rsv zy.tmp
scoreboard players set @s zy.spin 0
scoreboard players set @s zy.age 2
scoreboard players set @s zy.off 0
scoreboard players operation @s zy.owner = #o zy.tmp
function zy:ring/text with storage zy:m ring
execute unless entity @e[tag=zy.ringhost,type=player] run ride @s mount @e[tag=zy.ringhost,limit=1]
execute if entity @e[tag=zy.ringhost,type=player] run function zy:ring/queue_mount
tag @s remove zy.ringnew
