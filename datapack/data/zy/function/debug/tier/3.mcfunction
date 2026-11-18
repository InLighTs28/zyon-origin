function zy:debug/guard
scoreboard players set @s zy.res 15000
scoreboard players set @s zy.tierold 2
function zy:core/stats
function zy:hud/update
tellraw @s ["", {"text": "▸ ", "color": "dark_aqua"}, {"translate": "zy.dbg.ok.tier3", "fallback": "Resonance set to tier 3.", "color": "aqua"}]
