function zy:debug/guard
scoreboard players set @s zy.res 0
scoreboard players set @s zy.tierold 0
function zy:core/stats
function zy:hud/update
tellraw @s ["", {"text": "▸ ", "color": "dark_aqua"}, {"translate": "zy.dbg.ok.tier0", "fallback": "Resonance set to tier 0.", "color": "aqua"}]
