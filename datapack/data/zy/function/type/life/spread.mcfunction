tag @s add zy.src
scoreboard players operation #d zy.tmp = @s zy.dmg
scoreboard players operation #d zy.tmp *= #rate zy.tmp
scoreboard players operation #d zy.tmp /= #100 zy.tmp
scoreboard players operation #k zy.tmp = @a[tag=zy.cur,limit=1] zy.p2
scoreboard players operation #d zy.tmp *= #k zy.tmp
scoreboard players set #k zy.tmp 4
scoreboard players operation #d zy.tmp /= #k zy.tmp
execute if score #d zy.tmp matches 1.. as @e[tag=zy.mine,tag=zy.s1,tag=!zy.src,tag=!zy.iso] at @s run function zy:type/life/receive
tag @s remove zy.src
