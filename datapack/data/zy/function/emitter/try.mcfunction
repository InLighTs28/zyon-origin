tag @s add zy.cur
execute unless score @s zy.charge matches 1.. run return run function zy:emitter/deny_charge
execute unless score @s zy.epk matches 1.. run return run function zy:emitter/deny_empty
execute if score @s zy.food matches ..6 run return run function zy:emitter/deny_flux
scoreboard players remove @s zy.epk 1
scoreboard players operation @s zy.cost += #ecost zy.tmp
function zy:emitter/fire
tag @s remove zy.cur
