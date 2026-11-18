scoreboard players remove @s zy.ov 1
particle dust{color:[0.94,0.16,0.16],scale:1.3} ~ ~1 ~ 0.6 0.8 0.6 0 4 force
execute if score @s zy.ov matches 0 run function zy:reseau/explosion
