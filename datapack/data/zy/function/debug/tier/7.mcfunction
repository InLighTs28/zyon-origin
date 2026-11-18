function zy:debug/guard
scoreboard players set @s zy.res 120000
scoreboard players set @s zy.tierold 6
function zy:core/stats
function zy:hud/update
tellraw @s ["", {"text": "▸ ", "color": "dark_aqua"}, {"translate": "zy.dbg.ok.tier7", "fallback": "Resonance set to tier 7.", "color": "aqua"}]
