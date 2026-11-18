tag @s add zy.self
execute if entity @s[tag=zy.viarel] run tag @e[tag=zy.owned,tag=zy.s2,tag=!zy.self,tag=!zy.dormant,sort=nearest,limit=1] add zy.up
scoreboard players operation #h zy.tmp = @s zy.hop
scoreboard players remove #h zy.tmp 1
execute store result storage zy:m c.h int 1 run scoreboard players get #h zy.tmp
execute unless entity @e[tag=zy.up,limit=1] run function zy:network/cable_up with storage zy:m c
execute unless entity @e[tag=zy.up,limit=1] run tag @a[tag=zy.cur] add zy.up
scoreboard players set #b zy.tmp 64
execute positioned ~ ~0.12 ~ facing entity @e[tag=zy.up,limit=1,sort=nearest] feet positioned ^ ^ ^0.5 run function zy:network/cable_step
tag @e[tag=zy.up] remove zy.up
tag @s remove zy.self
