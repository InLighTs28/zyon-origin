tag @s add zy.pkt
scoreboard players operation @s zy.owner = #po zy.tmp
scoreboard players operation @s zy.cmode = #pm zy.tmp
scoreboard players operation @s zy.pstep = #pr zy.tmp
tp @s ~ ~ ~ ~ ~
data merge entity @s {billboard:"center",teleport_duration:1,view_range:0.6f,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.55f,0.55f,0.55f]}}
execute if score @s zy.cmode matches 2 run data modify entity @s item set value {id:"minecraft:tipped_arrow",count:1,components:{"minecraft:custom_model_data":7320,"minecraft:potion_contents":{custom_color:16750120}}}
execute unless score @s zy.cmode matches 2 run data modify entity @s item set value {id:"minecraft:tipped_arrow",count:1,components:{"minecraft:custom_model_data":7320,"minecraft:potion_contents":{custom_color:7598847}}}
