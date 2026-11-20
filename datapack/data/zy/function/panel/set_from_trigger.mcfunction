function zy:rcon/defaults
scoreboard players operation #p zy.tmp = @s zy.cfg
scoreboard players remove #p zy.tmp 1000
scoreboard players operation #v zy.tmp = #p zy.tmp
scoreboard players operation #v zy.tmp %= #10 zy.tmp
scoreboard players operation #p zy.tmp /= #10 zy.tmp
execute if score #p zy.tmp matches 17.. run return 0
execute if score #p zy.tmp matches 0 if score #v zy.tmp matches 5.. run return 0
execute if score #p zy.tmp matches 1 if score #v zy.tmp matches 4.. run return 0
execute if score #p zy.tmp matches 2 if score #v zy.tmp matches 5.. run return 0
execute if score #p zy.tmp matches 3 if score #v zy.tmp matches 2.. run return 0
execute if score #p zy.tmp matches 4 if score #v zy.tmp matches 3.. run return 0
execute if score #p zy.tmp matches 5 if score #v zy.tmp matches 3.. run return 0
execute if score #p zy.tmp matches 6 if score #v zy.tmp matches 3.. run return 0
execute if score #p zy.tmp matches 7 if score #v zy.tmp matches 2.. run return 0
execute if score #p zy.tmp matches 8 if score #v zy.tmp matches 5.. run return 0
execute if score #p zy.tmp matches 9 if score #v zy.tmp matches 5.. run return 0
execute if score #p zy.tmp matches 10 if score #v zy.tmp matches 5.. run return 0
execute if score #p zy.tmp matches 11 if score #v zy.tmp matches 5.. run return 0
execute if score #p zy.tmp matches 12 if score #v zy.tmp matches 3.. run return 0
execute if score #p zy.tmp matches 13 if score #v zy.tmp matches 2.. run return 0
execute if score #p zy.tmp matches 14 if score #v zy.tmp matches 2.. run return 0
execute if score #p zy.tmp matches 15 if score #v zy.tmp matches 2.. run return 0
execute if score #p zy.tmp matches 16 if score #v zy.tmp matches 2.. run return 0
execute store result storage zy:con a.p int 1 run scoreboard players get #p zy.tmp
execute store result storage zy:con a.v int 1 run scoreboard players get #v zy.tmp
function zy:panel/set with storage zy:con a
playsound zy:ui.click player @s ~ ~ ~ 0.6 1.3
function zy:hud/update
function zy:panel/redraw
