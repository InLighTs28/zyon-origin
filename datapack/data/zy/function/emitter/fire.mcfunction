scoreboard players operation #po zy.tmp = @s zy.id
scoreboard players operation #pm zy.tmp = @s zy.cmode
scoreboard players operation #pr zy.tmp = #erng zy.tmp
scoreboard players set @s zy.charge 0
execute anchored eyes positioned ^-0.25 ^-0.15 ^0.6 summon minecraft:item_display run function zy:emitter/packet_init
playsound zy:emitter.fire player @a ~ ~ ~ 0.9 1
function zy:hud/state
