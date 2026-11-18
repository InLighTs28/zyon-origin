function zy:debug/guard
function zy:core/begin
execute as @e[tag=zy.dbg] at @s run function zy:debug/force_apply
function zy:core/count
function zy:hud/update
function zy:core/end
tellraw @s ["", {"text": "▸ ", "color": "dark_aqua"}, {"translate": "zy.dbg.ok.sealed", "fallback": "Armed seal applied to every test mob.", "color": "aqua"}]
