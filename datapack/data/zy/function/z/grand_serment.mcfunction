scoreboard players set @s zy.gs 160
title @s title {"text":"Grand Serment","color":"light_purple"}
title @s subtitle {"text":"8 secondes. Puis tout rompt.","color":"gray"}
playsound minecraft:block.end_portal.spawn player @a ~ ~ ~ 1 1.2
execute as @e[tag=zy.mien] at @s run particle dust{color:[0.86,0.47,1.00],scale:2.0} ~ ~1 ~ 0.4 1 0.4 0 40 force
function zy:msg/gs
