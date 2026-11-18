scoreboard players remove @s zy.evt 1
execute if entity @s[tag=zy.evspike] run particle minecraft:dust{color:[1.0,0.8,0.2],scale:1.2} ~ ~2.4 ~ 0.05 0.6 0.05 0 12 force @a[tag=zy.cur,limit=1]
execute if entity @s[tag=zy.evintr] run particle minecraft:dust{color:[1.0,0.2,0.2],scale:1.2} ~ ~2.4 ~ 0.05 0.6 0.05 0 12 force @a[tag=zy.cur,limit=1]
execute if entity @s[tag=zy.evintr] run playsound zy:ui.blip player @a[tag=zy.cur,limit=1] ~ ~ ~ 0.4 0.6
execute if score @s zy.evt matches ..0 if entity @s[tag=zy.evspike] run function zy:ev/spike_miss
execute if score @s zy.evt matches ..0 if entity @s[tag=zy.evintr] run function zy:ev/intr_fail
