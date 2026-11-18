execute if entity @s[tag=zy.dying] run return run function zy:ring/dying
scoreboard players operation #u zy.tmp = @s zy.uid
execute as @e[tag=zy.m] if score @s zy.uid = #u zy.tmp run tag @s add zy.linked
execute unless entity @e[tag=zy.linked,limit=1] if score @s zy.layer matches ..1 run function zy:network/link_report
execute unless entity @e[tag=zy.linked,limit=1] run return run kill @s
scoreboard players set #rid zy.tmp 0
execute on vehicle run scoreboard players set #rid zy.tmp 1
execute if score #rid zy.tmp matches 0 run function zy:ring/loose
execute if score #rid zy.tmp matches 1 if score #t zy.t matches 0..19 run function zy:ring/seat
scoreboard players remove @s[scores={zy.age=1..}] zy.age 1
execute if score @s zy.age matches 0 run function zy:ring/grow
scoreboard players remove @s[scores={zy.age=-20..-1}] zy.age 1
execute if score @s zy.age matches -6 run function zy:ring/settle
execute if entity @e[tag=zy.linked,tag=zy.s5,limit=1] unless entity @s[tag=zy.hidden] run function zy:ring/hide
execute unless entity @e[tag=zy.linked,tag=zy.s5,limit=1] if entity @s[tag=zy.hidden] run function zy:ring/show
tag @e[tag=zy.linked] remove zy.linked
