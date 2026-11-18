scoreboard players operation #u zy.tmp = @s zy.uid
execute as @e[type=item_display,tag=zy.ring] if score @s zy.uid = #u zy.tmp run kill @s
