title @a[tag=zy.cur,limit=1] actionbar {"text": "L'Impulsion se recharge.", "color": "red"}
scoreboard players set @a[tag=zy.cur,limit=1] zy.msg 30
execute as @a[tag=zy.cur,limit=1] at @s run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 0.6 1
