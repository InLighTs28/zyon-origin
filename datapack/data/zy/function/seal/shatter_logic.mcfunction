execute unless entity @e[tag=zy.tgt,limit=1] run return run function zy:seal/dissolve
execute unless entity @e[tag=zy.tgt,tag=zy.owned,limit=1] run return run function zy:msg/not_mine
execute as @e[tag=zy.tgt,limit=1] at @s run function zy:seal/release
execute as @e[tag=zy.tgt,limit=1] run function zy:seal/clear
function zy:msg/shattered
scoreboard players add @s zy.sync 10
advancement grant @s only zy:zyon/shatter
