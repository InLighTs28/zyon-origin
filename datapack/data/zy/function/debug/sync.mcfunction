scoreboard players set @s zy.sync 100
scoreboard players set @s zy.idle 0
tellraw @s ["", {"text": "▸ ", "color": "dark_aqua"}, {"translate": "zy.dbg.ok.sync", "fallback": "Synchronisation 100%.", "color": "aqua"}]
