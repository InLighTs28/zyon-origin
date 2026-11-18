function zy:debug/guard
scoreboard players set @s zy.res 6000
scoreboard players set @s zy.tierold 1
function zy:core/stats
function zy:hud/update
tellraw @s ["", {"text": "▸ ", "color": "dark_aqua"}, {"translate": "zy.dbg.ok.tier2", "fallback": "Resonance set to tier 2.", "color": "aqua"}]
