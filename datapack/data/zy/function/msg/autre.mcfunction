title @a[tag=zy.cur,limit=1] actionbar {"text": "Cet être porte déjà les marques d'un autre Zyon.", "color": "red"}
scoreboard players set @a[tag=zy.cur,limit=1] zy.msg 30
execute as @a[tag=zy.cur,limit=1] at @s run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 0.6 1
