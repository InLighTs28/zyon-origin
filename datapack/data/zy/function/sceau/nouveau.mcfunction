tag @s add zy.m
scoreboard players add #uid zy.uid 1
scoreboard players operation @s zy.uid = #uid zy.uid
scoreboard players set @s zy.acc 0
scoreboard players set @s zy.gv 0
scoreboard players set @s zy.ov 0
summon minecraft:text_display ~ ~2 ~ {Tags:["zy.mk","zy.nouv"],billboard:"center",background:0,shadow:1b,see_through:0b,teleport_duration:2,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.9f,0.9f,0.9f]},text:'""'}
scoreboard players operation @e[type=text_display,tag=zy.nouv] zy.uid = @s zy.uid
tag @e[type=text_display,tag=zy.nouv] remove zy.nouv
