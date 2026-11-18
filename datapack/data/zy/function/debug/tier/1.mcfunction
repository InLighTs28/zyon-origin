function zy:debug/guard
scoreboard players set @s zy.res 2000
scoreboard players set @s zy.tierold 0
function zy:core/stats
function zy:hud/update
tellraw @s ["", {"text": "▸ ", "color": "dark_aqua"}, {"translate": "zy.dbg.ok.tier1", "fallback": "Resonance set to tier 1.", "color": "aqua"}]
