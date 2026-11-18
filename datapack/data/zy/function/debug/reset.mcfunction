function zy:debug/guard
function zy:core/begin
execute as @e[tag=zy.owned] run function zy:seal/clear
function zy:type/essence/clean
function zy:core/end
scoreboard players set @s zy.res 0
scoreboard players set @s zy.tier 0
scoreboard players set @s zy.tierold 0
scoreboard players set @s zy.sel 1
scoreboard players set @s zy.last 1
scoreboard players set @s zy.pulse 0
scoreboard players set @s zy.oath 0
function zy:debug/cooldowns
scoreboard players set @s zy.spgiven 0
scoreboard players set @s zy.sppend 0
scoreboard players set @s zy.spreset 1
scoreboard players set @s zy.sync 0
scoreboard players set @s zy.idle 0
scoreboard players set @s zy.evcd 25
advancement revoke @s from zy:zyon/root
advancement grant @s only zy:zyon/root
function zy:core/stats
function zy:hud/update
tellraw @s ["", {"text": "▸ ", "color": "dark_aqua"}, {"translate": "zy.dbg.ok.reset", "fallback": "Zyon reset to tier 0.", "color": "aqua"}]
