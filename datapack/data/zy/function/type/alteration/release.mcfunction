execute if entity @s[nbt={active_effects:[{id:"minecraft:poison"}]}] run effect give @e[distance=..4,tag=!zy.cur,type=!#zy:inert] minecraft:poison 5 0
execute if entity @s[nbt={active_effects:[{id:"minecraft:wither"}]}] run effect give @e[distance=..4,tag=!zy.cur,type=!#zy:inert] minecraft:wither 5 0
execute if entity @s[nbt={active_effects:[{id:"minecraft:slowness"}]}] run effect give @e[distance=..4,tag=!zy.cur,type=!#zy:inert] minecraft:slowness 5 0
execute if entity @s[nbt={active_effects:[{id:"minecraft:weakness"}]}] run effect give @e[distance=..4,tag=!zy.cur,type=!#zy:inert] minecraft:weakness 5 0
execute if entity @s[nbt={active_effects:[{id:"minecraft:blindness"}]}] run effect give @e[distance=..4,tag=!zy.cur,type=!#zy:inert] minecraft:blindness 5 0
execute if entity @s[nbt={active_effects:[{id:"minecraft:hunger"}]}] run effect give @e[distance=..4,tag=!zy.cur,type=!#zy:inert] minecraft:hunger 5 0
execute if entity @s[nbt={active_effects:[{id:"minecraft:mining_fatigue"}]}] run effect give @e[distance=..4,tag=!zy.cur,type=!#zy:inert] minecraft:mining_fatigue 5 0
execute if entity @s[nbt={active_effects:[{id:"minecraft:nausea"}]}] run effect give @e[distance=..4,tag=!zy.cur,type=!#zy:inert] minecraft:nausea 5 0
execute if entity @s[nbt={active_effects:[{id:"minecraft:darkness"}]}] run effect give @e[distance=..4,tag=!zy.cur,type=!#zy:inert] minecraft:darkness 5 0
execute if entity @s[nbt={active_effects:[{id:"minecraft:levitation"}]}] run effect give @e[distance=..4,tag=!zy.cur,type=!#zy:inert] minecraft:levitation 5 0
particle dust{color:[0.38,0.86,0.38],scale:1.6} ~ ~1 ~ 2 0.5 2 0 60 force
playsound zy:seal.shatter player @a ~ ~ ~ 1 0.9
