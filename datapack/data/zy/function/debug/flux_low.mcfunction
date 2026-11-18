effect give @s minecraft:hunger 3 255 true
effect clear @s minecraft:saturation
tellraw @s ["", {"text": "▸ ", "color": "dark_aqua"}, {"translate": "zy.dbg.ok.low", "fallback": "Flux draining…", "color": "aqua"}]
