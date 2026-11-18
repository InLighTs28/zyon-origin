function zy:seal/dissolve_all
kill @e[tag=zy.dbg]
tellraw @s ["", {"text": "▸ ", "color": "dark_aqua"}, {"translate": "zy.dbg.ok.clear", "fallback": "Network dissolved, test mobs removed.", "color": "aqua"}]
