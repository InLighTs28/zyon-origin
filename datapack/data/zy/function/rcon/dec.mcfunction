execute unless score @s zy.con matches 1 run return 0
execute if score @s zy.pcur matches 0 unless score @s zy.p0 matches ..0 run scoreboard players remove @s zy.p0 1
execute if score @s zy.pcur matches 1 unless score @s zy.p1 matches ..0 run scoreboard players remove @s zy.p1 1
execute if score @s zy.pcur matches 2 unless score @s zy.p2 matches ..0 run scoreboard players remove @s zy.p2 1
execute if score @s zy.pcur matches 3 unless score @s zy.p3 matches ..0 run scoreboard players remove @s zy.p3 1
execute if score @s zy.pcur matches 4 unless score @s zy.p4 matches ..0 run scoreboard players remove @s zy.p4 1
execute if score @s zy.pcur matches 5 unless score @s zy.p5 matches ..0 run scoreboard players remove @s zy.p5 1
execute if score @s zy.pcur matches 6 unless score @s zy.p6 matches ..0 run scoreboard players remove @s zy.p6 1
execute if score @s zy.pcur matches 7 unless score @s zy.p7 matches ..0 run scoreboard players remove @s zy.p7 1
execute if score @s zy.pcur matches 8 unless score @s zy.p8 matches ..0 run scoreboard players remove @s zy.p8 1
execute if score @s zy.pcur matches 9 unless score @s zy.p9 matches ..0 run scoreboard players remove @s zy.p9 1
execute if score @s zy.pcur matches 10 unless score @s zy.p10 matches ..0 run scoreboard players remove @s zy.p10 1
execute if score @s zy.pcur matches 11 unless score @s zy.p11 matches ..0 run scoreboard players remove @s zy.p11 1
execute if score @s zy.pcur matches 12 unless score @s zy.p12 matches ..0 run scoreboard players remove @s zy.p12 1
execute if score @s zy.pcur matches 13 unless score @s zy.p13 matches ..0 run scoreboard players remove @s zy.p13 1
execute if score @s zy.pcur matches 14 unless score @s zy.p14 matches ..0 run scoreboard players remove @s zy.p14 1
execute if score @s zy.pcur matches 15 unless score @s zy.p15 matches ..0 run scoreboard players remove @s zy.p15 1
execute if score @s zy.pcur matches 16 unless score @s zy.p16 matches ..0 run scoreboard players remove @s zy.p16 1
playsound zy:ui.tick player @s ~ ~ ~ 0.4 1.8
function zy:hud/update
