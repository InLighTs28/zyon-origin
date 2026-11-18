function zy:seal/has_it_self
execute if score #d zy.tmp matches 1 run return 0
function zy:seal/stack
execute if score @s zy.stack matches 4.. run return 0
function zy:seal/apply
