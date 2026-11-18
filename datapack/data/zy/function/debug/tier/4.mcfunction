function zy:debug/guard
scoreboard players set @s zy.res 30000
scoreboard players set @s zy.tierold 3
function zy:core/stats
function zy:hud/update
tellraw @s ["", {"text": "▸ ", "color": "dark_aqua"}, {"translate": "zy.dbg.ok.tier4", "fallback": "Resonance set to tier 4.", "color": "aqua"}]
