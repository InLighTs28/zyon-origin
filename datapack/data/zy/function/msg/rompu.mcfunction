title @a[tag=zy.cur,limit=1] actionbar {"text": "Un sceau s'est rompu : trop loin.", "color": "gray"}
scoreboard players set @a[tag=zy.cur,limit=1] zy.msg 30
execute as @a[tag=zy.cur,limit=1] at @s run playsound minecraft:block.amethyst_block.chime player @s ~ ~ ~ 0.6 1
