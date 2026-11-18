scoreboard players set @s zy.nt 0
execute if entity @s[tag=zy.s1] run scoreboard players add @s zy.nt 1
execute if entity @s[tag=zy.s2] run scoreboard players add @s zy.nt 1
execute if entity @s[tag=zy.s3] run scoreboard players add @s zy.nt 1
execute if entity @s[tag=zy.s4] run scoreboard players add @s zy.nt 1
execute if entity @s[tag=zy.s5] run scoreboard players add @s zy.nt 1
execute if entity @s[tag=zy.s6] run scoreboard players add @s zy.nt 1
execute if entity @s[tag=zy.s7] run scoreboard players add @s zy.nt 1
execute if entity @s[tag=zy.s8] run scoreboard players add @s zy.nt 1
scoreboard players set #thr zy.tmp 3
execute if entity @s[tag=zy.cur] run scoreboard players set #thr zy.tmp 5
execute if score @s zy.nt >= #thr zy.tmp unless score @s zy.ov matches 1.. run function zy:reseau/surcharge_debut
execute if score @s zy.nt < #thr zy.tmp run scoreboard players set @s zy.ov 0
