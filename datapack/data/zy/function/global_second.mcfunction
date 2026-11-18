scoreboard players set #t zy.t 0
execute as @e[tag=zy.m] run function zy:seal/check_owner
tag @e[tag=zy.lit,predicate=!zy:on_fire] remove zy.lit
execute as @e[type=item_display,tag=zy.ring] run function zy:ring/spin
scoreboard players enable @a[tag=zy.z] zy.cfg
execute as @a[tag=zy.debug] run function zy:debug/sidebar_tick
