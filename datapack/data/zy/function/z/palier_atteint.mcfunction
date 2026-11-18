scoreboard players operation @s zy.palv = @s zy.pal
title @s title {"text":"Résonance","color":"light_purple"}
title @s subtitle [{"text":"Palier ","color":"gray"},{"score":{"name":"@s","objective":"zy.pal"},"color":"light_purple"},{"text":" atteint","color":"gray"}]
playsound minecraft:block.beacon.activate player @s ~ ~ ~ 1 1.4
particle minecraft:end_rod ~ ~1 ~ 0.6 1 0.6 0.05 40
