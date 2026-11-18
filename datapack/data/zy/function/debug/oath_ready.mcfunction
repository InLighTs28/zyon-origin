function zy:debug/guard
function zy:debug/max
kill @e[tag=zy.dbg]
function zy:debug/dummies
scoreboard players operation #keepsel zy.tmp = @s zy.sel
scoreboard players set @s zy.sel 1
function zy:debug/seal_dummies
scoreboard players operation @s zy.sel = #keepsel zy.tmp
tellraw @s ["", {"text": "▸ ", "color": "dark_aqua"}, {"translate": "zy.dbg.ok.oath", "fallback": "6 Life seals placed. Sneak + secondary key to swear the Oath.", "color": "aqua"}]
