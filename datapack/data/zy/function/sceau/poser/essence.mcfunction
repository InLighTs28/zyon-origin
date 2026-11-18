tag @s add zy.s6
particle dust{color:[0.96,0.76,0.22],scale:1.4} ~ ~1 ~ 0.4 0.6 0.4 0 30 force
particle minecraft:enchant ~ ~1.2 ~ 0.4 0.5 0.4 0.6 20
playsound minecraft:block.amethyst_block.place player @a ~ ~ ~ 1 0.8
playsound minecraft:block.respawn_anchor.charge player @a ~ ~ ~ 0.4 1.8
title @a[tag=zy.cur,limit=1] actionbar [{"text": "", "font": "zy:hud"}, {"text": " Sceau de ", "color": "gray"}, {"text": "Essence", "color": "#f5c337"}, {"text": " apposé", "color": "gray"}]
scoreboard players set @a[tag=zy.cur,limit=1] zy.msg 30
