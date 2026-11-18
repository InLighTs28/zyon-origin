scoreboard players set @s zy.age -1
scoreboard players operation #v zy.tmp = @s zy.rs
scoreboard players set #k zy.tmp 5
scoreboard players operation #v zy.tmp *= #k zy.tmp
scoreboard players set #k zy.tmp 4
scoreboard players operation #v zy.tmp /= #k zy.tmp
function zy:util/dec
function zy:ring/scale with storage zy:m dec
