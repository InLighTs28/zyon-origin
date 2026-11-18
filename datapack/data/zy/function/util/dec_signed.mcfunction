scoreboard players set #neg zy.tmp 0
execute if score #v zy.tmp matches ..-1 run scoreboard players set #neg zy.tmp 1
execute if score #neg zy.tmp matches 1 run scoreboard players operation #v zy.tmp *= #m1 zy.tmp
function zy:util/dec
execute if score #neg zy.tmp matches 1 run function zy:util/dec_neg with storage zy:m dec
