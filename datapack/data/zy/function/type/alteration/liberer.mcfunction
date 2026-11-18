execute if entity @s[nbt={active_effects:[{id:"minecraft:poison"}]}] run effect give @e[distance=..4,tag=!zy.cur,type=!#zy:inerte] minecraft:poison 5 0
execute if entity @s[nbt={active_effects:[{id:"minecraft:wither"}]}] run effect give @e[distance=..4,tag=!zy.cur,type=!#zy:inerte] minecraft:wither 5 0
execute if entity @s[nbt={active_effects:[{id:"minecraft:slowness"}]}] run effect give @e[distance=..4,tag=!zy.cur,type=!#zy:inerte] minecraft:slowness 5 0
execute if entity @s[nbt={active_effects:[{id:"minecraft:weakness"}]}] run effect give @e[distance=..4,tag=!zy.cur,type=!#zy:inerte] minecraft:weakness 5 0
execute if entity @s[nbt={active_effects:[{id:"minecraft:blindness"}]}] run effect give @e[distance=..4,tag=!zy.cur,type=!#zy:inerte] minecraft:blindness 5 0
execute if entity @s[nbt={active_effects:[{id:"minecraft:hunger"}]}] run effect give @e[distance=..4,tag=!zy.cur,type=!#zy:inerte] minecraft:hunger 5 0
execute if entity @s[nbt={active_effects:[{id:"minecraft:mining_fatigue"}]}] run effect give @e[distance=..4,tag=!zy.cur,type=!#zy:inerte] minecraft:mining_fatigue 5 0
execute if entity @s[nbt={active_effects:[{id:"minecraft:nausea"}]}] run effect give @e[distance=..4,tag=!zy.cur,type=!#zy:inerte] minecraft:nausea 5 0
execute if entity @s[nbt={active_effects:[{id:"minecraft:darkness"}]}] run effect give @e[distance=..4,tag=!zy.cur,type=!#zy:inerte] minecraft:darkness 5 0
execute if entity @s[nbt={active_effects:[{id:"minecraft:levitation"}]}] run effect give @e[distance=..4,tag=!zy.cur,type=!#zy:inerte] minecraft:levitation 5 0
particle dust{color:[0.41,0.80,0.31],scale:1.6} ~ ~1 ~ 2 0.5 2 0 60 force
playsound minecraft:entity.splash_potion.break player @a ~ ~ ~ 1 0.9
