title @a[tag=zy.cur,limit=1] actionbar {"text": "Le réseau se rompt.", "color": "light_purple"}
scoreboard players set @a[tag=zy.cur,limit=1] zy.msg 30
execute as @a[tag=zy.cur,limit=1] at @s run playsound minecraft:block.amethyst_block.chime player @s ~ ~ ~ 0.6 1
