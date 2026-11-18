execute if entity @s[tag=zy.s1] run function zy:type/vie/liberer
execute if entity @s[tag=zy.s2,type=player] run effect give @s minecraft:hunger 1 155 true
execute if entity @s[tag=zy.s3] run particle dust{color:[0.27,0.57,0.96],scale:1.6} ~ ~1 ~ 0.5 0.5 0.5 0 40 force
execute if entity @s[tag=zy.s4] if score @a[tag=zy.cur,limit=1] zy.pal matches 7.. run function zy:type/alteration/liberer
execute if entity @s[tag=zy.s5] run function zy:type/perception/liberer
execute if entity @s[tag=zy.s8] run function zy:type/perception/liberer
execute if entity @s[tag=zy.s6] run scoreboard players set @a[tag=zy.cur,limit=1] zy.ess 200
execute if entity @s[tag=zy.s7] run function zy:type/ancre/liberer
playsound minecraft:block.glass.break player @a ~ ~ ~ 1 0.7
particle minecraft:enchanted_hit ~ ~1 ~ 0.4 0.6 0.4 0.2 25 force
