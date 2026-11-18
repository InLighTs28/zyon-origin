scoreboard players set @s zy.death 0
execute unless entity @s[tag=zy.z] run return run execute if entity @s[tag=zy.m] run function zy:seal/clear
scoreboard players operation #od zy.tmp = @s zy.id
execute if score @s zy.id matches 1.. run function zy:core/sever
execute as @e[type=item_display,tag=zy.ring] if score @s zy.owner = #od zy.tmp run kill @s
execute if entity @s[tag=zy.m] run function zy:seal/clear
scoreboard players set @s zy.pulse 0
scoreboard players set @s zy.oath 0
scoreboard players set @s zy.lock 0
scoreboard players set @s zy.charge 0
scoreboard players set @s zy.cmode 0
scoreboard players set @s zy.hold 0
scoreboard players set @s zy.hold3 0
scoreboard players set @s zy.dial 0
scoreboard players set @s zy.con 0
scoreboard players set @s zy.chold 0
scoreboard players set @s zy.mode 0
scoreboard players set @s zy.timer 0
scoreboard players set @s zy.evt 0
scoreboard players set @s zy.evcd 25
scoreboard players set @s zy.sync 0
scoreboard players set @s zy.idle 0
scoreboard players set @s zy.crit 0
scoreboard players set @s zy.ndorm 0
scoreboard players set @s zy.ntot 0
scoreboard players set @s zy.siphons 0
tag @s remove zy.iso
function zy:core/stats
function zy:hud/update
tag @s add zy.cur
function zy:msg/purged
tag @s remove zy.cur
