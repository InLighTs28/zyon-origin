tag @s add zy.s3
scoreboard players set @s zy.el 1
particle dust{color:[0.27,0.57,0.96],scale:1.4} ~ ~1 ~ 0.4 0.6 0.4 0 30 force
particle minecraft:enchant ~ ~1.2 ~ 0.4 0.5 0.4 0.6 20
playsound minecraft:block.amethyst_block.place player @a ~ ~ ~ 1 0.8
playsound minecraft:block.respawn_anchor.charge player @a ~ ~ ~ 0.4 1.8
title @a[tag=zy.cur,limit=1] actionbar [{"text": "", "font": "zy:hud"}, {"text": " Sceau de ", "color": "gray"}, {"text": "Élan", "color": "#4691f5"}, {"text": " apposé", "color": "gray"}]
scoreboard players set @a[tag=zy.cur,limit=1] zy.msg 30
