scoreboard players remove @s zy.sel 1
execute if score @s zy.sel matches ..-1 run scoreboard players set @s zy.sel 8
function zy:seal/required
execute if score @s zy.tier < #req zy.tmp run return run function zy:core/cycle_prev_step
execute if score @s zy.sel matches 0 run function zy:msg/select/siphon
execute if score @s zy.sel matches 1 run function zy:msg/select/life
execute if score @s zy.sel matches 2 run function zy:msg/select/relay
execute if score @s zy.sel matches 3 run function zy:msg/select/momentum
execute if score @s zy.sel matches 4 run function zy:msg/select/alteration
execute if score @s zy.sel matches 5 run function zy:msg/select/erase
execute if score @s zy.sel matches 6 run function zy:msg/select/essence
execute if score @s zy.sel matches 7 run function zy:msg/select/anchor
execute if score @s zy.sel matches 8 run function zy:msg/select/reveal
