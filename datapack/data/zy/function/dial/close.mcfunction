scoreboard players set @s zy.dial 0
function zy:core/stats
function zy:seal/required
execute if score @s zy.tier >= #req zy.tmp run function zy:input/charge_seal
function zy:hud/state
