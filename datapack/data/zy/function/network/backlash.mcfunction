execute unless score @a[tag=zy.cur,limit=1] zy.a3 matches 1 run damage @a[tag=zy.cur,limit=1] 2 zy:backlash
execute if score @a[tag=zy.cur,limit=1] zy.a3 matches 1 run damage @a[tag=zy.cur,limit=1] 1 zy:backlash
scoreboard players add @a[tag=zy.cur,limit=1] zy.cost 20
