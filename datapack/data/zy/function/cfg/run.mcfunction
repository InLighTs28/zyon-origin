execute if score @s zy.cfg matches 1 run function zy:cfg/hud_cycle
execute if score @s zy.cfg matches 2 run function zy:cfg/help
execute if score @s zy.cfg matches 3 run function zy:cfg/hud_guide
execute if score @s zy.cfg matches 4 run function zy:panel/open
execute if score @s zy.cfg matches 900..908 run function zy:panel/page_from_trigger
execute if score @s zy.cfg matches 920 run function zy:panel/page/net
execute if score @s zy.cfg matches 1000..1169 run function zy:panel/set_from_trigger
scoreboard players set @s zy.cfg 0
scoreboard players enable @s zy.cfg
