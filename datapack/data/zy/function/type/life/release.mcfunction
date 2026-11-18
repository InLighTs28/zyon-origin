scoreboard players operation #v zy.tmp = @s zy.acc
scoreboard players set #k zy.tmp 5
execute if score @a[tag=zy.cur,limit=1] zy.tier matches 6.. run scoreboard players set #k zy.tmp 10
scoreboard players operation #v zy.tmp *= #k zy.tmp
execute if score #v zy.tmp matches ..0 run return 0
function zy:util/dec
function zy:type/life/hit with storage zy:m dec
particle dust{color:[0.94,0.25,0.28],scale:2.0} ~ ~1 ~ 0.5 0.7 0.5 0 50 force
playsound zy:alert.critical player @a ~ ~ ~ 1.2 0.8
