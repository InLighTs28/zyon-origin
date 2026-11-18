execute unless score @s zy.charge matches 1.. run return run tag @e[tag=zy.tgt] remove zy.tgt
scoreboard players set @s zy.charge 0
scoreboard players set #evdone zy.tmp 0
tag @s add zy.cur
execute if entity @e[tag=zy.tgt,tag=zy.evintr,limit=1] run function zy:ev/intr_ok
execute if entity @e[tag=zy.tgt,tag=zy.evspike,limit=1] if score @s zy.cmode matches 1 run function zy:ev/spike_ok
tag @s remove zy.cur
execute if score #evdone zy.tmp matches 1 run scoreboard players set @s zy.cmode 0
execute if score @s zy.cmode matches 1 run function zy:seal/place
execute if score @s zy.cmode matches 2 run function zy:seal/shatter
scoreboard players set @s zy.cmode 0
tag @e[tag=zy.tgt] remove zy.tgt
function zy:hud/state
