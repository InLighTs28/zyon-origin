tag @s add zy.self
tag @s add zy.live
scoreboard players operation @s zy.hop = @e[tag=zy.live,tag=!zy.self,sort=nearest,limit=1] zy.hop
scoreboard players add @s zy.hop 1
tag @s remove zy.self
