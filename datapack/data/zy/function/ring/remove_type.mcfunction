scoreboard players operation #u zy.tmp = @s zy.uid
scoreboard players set #lay zy.tmp 0
execute as @e[type=item_display,tag=zy.ring,tag=!zy.dying] if score @s zy.uid = #u zy.tmp if score @s zy.stype = #type zy.tmp store result score #lay zy.tmp run scoreboard players get @s zy.layer
execute as @e[type=item_display,tag=zy.ring,tag=!zy.dying] if score @s zy.uid = #u zy.tmp if score @s zy.stype = #type zy.tmp run function zy:ring/burst
execute as @e[type=item_display,tag=zy.ring,tag=!zy.dying] if score @s zy.uid = #u zy.tmp if score @s zy.layer > #lay zy.tmp run function zy:ring/shift_in
