scoreboard players operation #v zy.tmp = @s zy.acc
scoreboard players set #k zy.tmp 5
execute if score @a[tag=zy.cur,limit=1] zy.pal matches 6.. run scoreboard players set #k zy.tmp 10
scoreboard players operation #v zy.tmp *= #k zy.tmp
execute if score #v zy.tmp matches ..0 run return 0
function zy:util/dec
function zy:type/vie/coup with storage zy:m dec
particle dust{color:[0.92,0.24,0.24],scale:2.0} ~ ~1 ~ 0.5 0.7 0.5 0 50 force
playsound minecraft:entity.warden.heartbeat player @a ~ ~ ~ 1.2 0.8
