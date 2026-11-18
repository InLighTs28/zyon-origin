scoreboard players operation #w zy.tmp = #v zy.tmp
scoreboard players operation #w zy.tmp /= #100 zy.tmp
scoreboard players operation #f zy.tmp = #v zy.tmp
scoreboard players operation #f zy.tmp %= #100 zy.tmp
execute store result storage zy:m dec.w int 1 run scoreboard players get #w zy.tmp
execute store result storage zy:m dec.f int 1 run scoreboard players get #f zy.tmp
execute if score #f zy.tmp matches ..9 run function zy:util/dec_pad with storage zy:m dec
execute if score #f zy.tmp matches 10.. run function zy:util/dec_nopad with storage zy:m dec
