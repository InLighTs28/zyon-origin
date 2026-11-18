scoreboard players operation #d zy.tmp = #exp zy.tmp
scoreboard players operation #d zy.tmp -= @s zy.spgiven
scoreboard players operation @s zy.sppend += #d zy.tmp
scoreboard players operation @s zy.spgiven = #exp zy.tmp
function zy:msg/points
