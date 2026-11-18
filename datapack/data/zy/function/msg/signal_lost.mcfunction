scoreboard players set @a[tag=zy.cur,limit=1] zy.note 15
scoreboard players set @a[tag=zy.cur,limit=1] zy.msg 40
execute as @a[tag=zy.cur,limit=1] at @s run playsound zy:ui.blip player @s ~ ~ ~ 0.5 0.9
execute as @a[tag=zy.cur,limit=1] at @s run playsound zy:net.down player @s ~ ~ ~ 0.5 1.8
