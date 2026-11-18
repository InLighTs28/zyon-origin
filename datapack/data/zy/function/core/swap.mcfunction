execute unless score @s zy.sel matches 0 run return run function zy:core/swap_to_siphon
execute unless score @s zy.last matches 1.. run scoreboard players set @s zy.last 1
scoreboard players operation @s zy.sel = @s zy.last
function zy:core/announce
