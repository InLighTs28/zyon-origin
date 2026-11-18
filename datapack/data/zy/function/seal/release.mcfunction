execute if entity @s[tag=zy.s1] run function zy:type/life/release
execute if entity @s[tag=zy.s3] run particle dust{color:[0.25,0.61,1.00],scale:1.6} ~ ~1 ~ 0.5 0.5 0.5 0 40 force
execute if entity @s[tag=zy.s4] if score @a[tag=zy.cur,limit=1] zy.tier matches 7.. run function zy:type/alteration/release
execute if entity @s[tag=zy.s5] run function zy:type/perception/release
execute if entity @s[tag=zy.s8] run function zy:type/perception/release
execute if entity @s[tag=zy.s6] run scoreboard players set @a[tag=zy.cur,limit=1] zy.esskeep 200
execute if entity @s[tag=zy.s7] run function zy:type/anchor/release
playsound zy:seal.dissolve player @a ~ ~ ~ 0.9 1.5
playsound zy:seal.shatter player @a ~ ~ ~ 0.8 1.6
playsound zy:net.backlash player @a ~ ~ ~ 0.3 2
particle minecraft:flash ~ ~0.5 ~ 0 0 0 0 1 force
particle minecraft:electric_spark ~ ~0.5 ~ 0.6 0.4 0.6 0.4 40 force
