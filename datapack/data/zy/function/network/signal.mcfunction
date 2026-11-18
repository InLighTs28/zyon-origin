scoreboard players set #k zy.tmp 20
execute if score @a[tag=zy.cur,limit=1] zy.a6 matches 1 run scoreboard players set #k zy.tmp 10
scoreboard players operation @s zy.sig = @s zy.hop
scoreboard players operation @s zy.sig *= #k zy.tmp
scoreboard players operation @s zy.sig *= #m1 zy.tmp
scoreboard players add @s zy.sig 100
execute if score @s zy.sig matches ..39 run scoreboard players set @s zy.sig 40
execute if score @s zy.sig matches 101.. run scoreboard players set @s zy.sig 100
execute if score @s zy.sig < @a[tag=zy.cur,limit=1] zy.sigmin run scoreboard players operation @a[tag=zy.cur,limit=1] zy.sigmin = @s zy.sig
