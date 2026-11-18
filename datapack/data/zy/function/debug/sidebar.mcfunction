execute if entity @s[tag=zy.debug] run return run function zy:debug/sidebar_off
tag @s add zy.debug
scoreboard objectives setdisplay sidebar zy.dbg
