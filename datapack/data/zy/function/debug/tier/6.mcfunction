function zy:debug/guard
scoreboard players set @s zy.res 80000
scoreboard players set @s zy.tierold 5
function zy:core/stats
function zy:hud/update
tellraw @s ["", {"text": "▸ ", "color": "dark_aqua"}, {"translate": "zy.dbg.ok.tier6", "fallback": "Resonance set to tier 6.", "color": "aqua"}]
