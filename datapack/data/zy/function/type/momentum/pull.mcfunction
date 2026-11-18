execute if score @a[tag=zy.cur,limit=1] zy.p4 matches 2 run return 0
execute if score @a[tag=zy.cur,limit=1] zy.p4 matches 0 facing entity @a[tag=zy.cur,limit=1] feet positioned ^ ^ ^-1 run summon minecraft:marker ~ ~ ~ {Tags:["zy.push"]}
execute if score @a[tag=zy.cur,limit=1] zy.p4 matches 1 facing entity @a[tag=zy.cur,limit=1] feet positioned ^ ^ ^1 run summon minecraft:marker ~ ~ ~ {Tags:["zy.push"]}
damage @s 0.01 zy:momentum by @e[type=marker,tag=zy.push,limit=1,sort=nearest]
kill @e[type=marker,tag=zy.push]
particle dust{color:[0.25,0.61,1.00],scale:1.0} ~ ~1 ~ 0.3 0.5 0.3 0 8 force
