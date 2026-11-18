scoreboard players set @s zy.sel 2
title @s actionbar ["", {"text": "", "font": "zy:hud", "color": "white"}, {"text": " ▸ ", "color": "dark_gray"}, {"translate": "zy.seal.sustenance", "fallback": "Sustenance", "color": "#d68c40"}, {"text": "  //  ", "color": "dark_gray"}, {"translate": "zy.ui.armed", "fallback": "ARMED", "color": "gray"}]
scoreboard players set @s zy.msg 30
playsound minecraft:block.note_block.bit player @s ~ ~ ~ 0.5 1.8
playsound minecraft:ui.button.click player @s ~ ~ ~ 0.3 2
function zy:hud/update
