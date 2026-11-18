scoreboard players set @a[tag=zy.cur,limit=1] zy.note 66
scoreboard players set @a[tag=zy.cur,limit=1] zy.msg 40
execute as @a[tag=zy.cur,limit=1] at @s run playsound zy:ui.blip player @s ~ ~ ~ 0.6 0.5
execute as @a[tag=zy.cur,limit=1] at @s run playsound zy:alert.intrusion player @s ~ ~ ~ 0.6 2
