function zy:debug/guard
scoreboard players set @s zy.res 50000
scoreboard players set @s zy.tierold 4
function zy:core/stats
function zy:hud/update
tellraw @s ["", {"text": "▸ ", "color": "dark_aqua"}, {"translate": "zy.dbg.ok.tier5", "fallback": "Resonance set to tier 5.", "color": "aqua"}]
