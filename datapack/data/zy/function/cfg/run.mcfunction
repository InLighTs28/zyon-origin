execute if score @s zy.cfg matches 1 run function zy:cfg/hud_cycle
execute if score @s zy.cfg matches 2 run function zy:cfg/help
execute if score @s zy.cfg matches 3 run function zy:cfg/hud_guide
scoreboard players set @s zy.cfg 0
scoreboard players enable @s zy.cfg
