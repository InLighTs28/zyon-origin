execute facing entity @a[tag=zy.cur,limit=1] feet positioned ^ ^ ^-1 run summon minecraft:marker ~ ~ ~ {Tags:["zy.pousse"]}
damage @s 0.01 zy:elan by @e[type=marker,tag=zy.pousse,limit=1,sort=nearest]
kill @e[type=marker,tag=zy.pousse]
particle dust{color:[0.27,0.57,0.96],scale:1.0} ~ ~1 ~ 0.3 0.5 0.3 0 8 force
