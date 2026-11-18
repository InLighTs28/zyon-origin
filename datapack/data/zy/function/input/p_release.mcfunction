scoreboard players set @s zy.act 1
execute if predicate zy:sneaking run scoreboard players set @s zy.act 4
execute if score @s zy.hold matches 10.. run scoreboard players set @s zy.act 2
execute if score @s zy.hold matches 30.. run scoreboard players set @s zy.act 3
function zy:input/p_reset
execute if score @s zy.act matches 1 run function zy:input/charge_seal
execute if score @s zy.act matches 2 run function zy:input/charge_shatter
