scoreboard players operation #u zy.tmp = @s zy.uid
execute as @e[type=item_display,tag=zy.ring,tag=!zy.dying] if score @s zy.uid = #u zy.tmp run function zy:ring/recolor_one
