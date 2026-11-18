scoreboard players operation #lay zy.tmp = @s zy.stack
scoreboard players operation #uidv zy.tmp = @s zy.uid
scoreboard players operation #rsv zy.tmp = @s zy.rs
scoreboard players set #mode zy.tmp 0
function zy:ring/glyph
tag @s add zy.ringhost
summon minecraft:item_display ~ ~0.04 ~ {Tags:["zy.ring","zy.ringnew"],item_display:"none",teleport_duration:1,view_range:1.5f,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}
execute as @e[type=item_display,tag=zy.ringnew] run function zy:ring/setup
tag @s remove zy.ringhost
