execute if entity @s[tag=zy.dying] run return 0
scoreboard players operation #u zy.tmp = @s zy.uid
execute as @e[tag=zy.dormant] if score @s zy.uid = #u zy.tmp run return run scoreboard players set #u zy.tmp -1
execute if score #u zy.tmp matches -1 run return 0
scoreboard players add @s zy.spin 1
execute if score @s zy.spin matches 4.. run scoreboard players set @s zy.spin 0
scoreboard players operation #par zy.tmp = @s zy.layer
scoreboard players set #k zy.tmp 2
scoreboard players operation #par zy.tmp %= #k zy.tmp
execute if score @s zy.spin matches 0 if score #par zy.tmp matches 1 run data merge entity @s {start_interpolation:0,interpolation_duration:20,transformation:{left_rotation:[0f,0.70711f,0f,0.70711f]}}
execute if score @s zy.spin matches 0 if score #par zy.tmp matches 0 run data merge entity @s {start_interpolation:0,interpolation_duration:20,transformation:{left_rotation:[0f,-0.70711f,0f,0.70711f]}}
execute if score @s zy.spin matches 1 if score #par zy.tmp matches 1 run data merge entity @s {start_interpolation:0,interpolation_duration:20,transformation:{left_rotation:[0f,1.0f,0f,0.0f]}}
execute if score @s zy.spin matches 1 if score #par zy.tmp matches 0 run data merge entity @s {start_interpolation:0,interpolation_duration:20,transformation:{left_rotation:[0f,-1.0f,0f,0.0f]}}
execute if score @s zy.spin matches 2 if score #par zy.tmp matches 1 run data merge entity @s {start_interpolation:0,interpolation_duration:20,transformation:{left_rotation:[0f,0.70711f,0f,-0.70711f]}}
execute if score @s zy.spin matches 2 if score #par zy.tmp matches 0 run data merge entity @s {start_interpolation:0,interpolation_duration:20,transformation:{left_rotation:[0f,-0.70711f,0f,-0.70711f]}}
execute if score @s zy.spin matches 3 if score #par zy.tmp matches 1 run data merge entity @s {start_interpolation:0,interpolation_duration:20,transformation:{left_rotation:[0f,0.0f,0f,-1.0f]}}
execute if score @s zy.spin matches 3 if score #par zy.tmp matches 0 run data merge entity @s {start_interpolation:0,interpolation_duration:20,transformation:{left_rotation:[0f,-0.0f,0f,-1.0f]}}
