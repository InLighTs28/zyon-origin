scoreboard players set #t zy.t 0
scoreboard players remove @e[scores={zy.drained=1..}] zy.drained 20
execute as @e[tag=zy.m] run function zy:seal/check_owner
tag @e[tag=zy.lit,predicate=!zy:on_fire] remove zy.lit
execute as @e[type=item_display,tag=zy.ring] if items entity @s contents minecraft:leather_horse_armor run function zy:ring/migrate
execute as @e[type=item_display,tag=zy.ring] run function zy:ring/spin
scoreboard players enable @a[tag=zy.z] zy.cfg
execute as @a[tag=zy.debug] run function zy:debug/sidebar_tick
