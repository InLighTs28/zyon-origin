execute if entity @s[tag=zy.dying] run return run function zy:ring/dying
scoreboard players operation #u zy.tmp = @s zy.uid
# #lk: 2 = riding its bearer (fast path, no entity scan) · 1 = found by scan · 0 = bearer gone
scoreboard players set #lk zy.tmp 0
scoreboard players set #rid zy.tmp 0
execute on vehicle run scoreboard players set #rid zy.tmp 1
execute if score #rid zy.tmp matches 1 on vehicle if entity @s[tag=zy.m] if score @s zy.uid = #u zy.tmp run scoreboard players set #lk zy.tmp 2
execute if score #lk zy.tmp matches 2 on vehicle run tag @s add zy.linked
execute if score #lk zy.tmp matches 0 as @e[tag=zy.m] if score @s zy.uid = #u zy.tmp run tag @s add zy.linked
execute if score #lk zy.tmp matches 0 if entity @e[tag=zy.linked,limit=1] run scoreboard players set #lk zy.tmp 1
execute if score #lk zy.tmp matches 0 if score @s zy.layer matches ..1 run function zy:network/link_report
execute if score #lk zy.tmp matches 0 run return run kill @s
execute if score #rid zy.tmp matches 0 run function zy:ring/loose
execute if score #rid zy.tmp matches 1 if score #t zy.t matches 0..19 run function zy:ring/seat
scoreboard players remove @s[scores={zy.age=1..}] zy.age 1
execute if score @s zy.age matches 0 run function zy:ring/grow
scoreboard players remove @s[scores={zy.age=-20..-1}] zy.age 1
execute if score @s zy.age matches -6 run function zy:ring/settle
scoreboard players set #s5 zy.tmp 0
execute if score #lk zy.tmp matches 2 on vehicle if entity @s[tag=zy.s5] run scoreboard players set #s5 zy.tmp 1
execute if score #lk zy.tmp matches 1 if entity @e[tag=zy.linked,tag=zy.s5,limit=1] run scoreboard players set #s5 zy.tmp 1
execute if score #s5 zy.tmp matches 1 unless entity @s[tag=zy.hidden] run function zy:ring/hide
execute if score #s5 zy.tmp matches 0 if entity @s[tag=zy.hidden] run function zy:ring/show
execute if score #lk zy.tmp matches 2 on vehicle run tag @s remove zy.linked
execute if score #lk zy.tmp matches 1 run tag @e[tag=zy.linked] remove zy.linked
