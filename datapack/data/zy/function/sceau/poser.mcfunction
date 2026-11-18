execute unless entity @s[tag=zy.m] run function zy:sceau/nouveau
scoreboard players operation @s zy.own = #o zy.tmp
tag @s add zy.mien
tag @s add zy.maj
execute if score @a[tag=zy.cur,limit=1] zy.sel matches 0 run function zy:sceau/poser/siphon
execute if score @a[tag=zy.cur,limit=1] zy.sel matches 1 run function zy:sceau/poser/vie
execute if score @a[tag=zy.cur,limit=1] zy.sel matches 2 run function zy:sceau/poser/subsistance
execute if score @a[tag=zy.cur,limit=1] zy.sel matches 3 run function zy:sceau/poser/elan
execute if score @a[tag=zy.cur,limit=1] zy.sel matches 4 run function zy:sceau/poser/alteration
execute if score @a[tag=zy.cur,limit=1] zy.sel matches 5 run function zy:sceau/poser/effacer
execute if score @a[tag=zy.cur,limit=1] zy.sel matches 6 run function zy:sceau/poser/essence
execute if score @a[tag=zy.cur,limit=1] zy.sel matches 7 run function zy:sceau/poser/ancre
execute if score @a[tag=zy.cur,limit=1] zy.sel matches 8 run function zy:sceau/poser/reveler
