tag @s add zy.s2
tag @s add zy.fxp2
scoreboard players set #type zy.tmp 2
function zy:fx/scan/sustenance
particle minecraft:electric_spark ~ ~0.3 ~ 0.5 0.1 0.5 0.3 20 force
particle minecraft:end_rod ~ ~0.1 ~ 0.3 0 0.3 0.02 6 force
playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 0.7 2
playsound minecraft:block.respawn_anchor.set_spawn player @a ~ ~ ~ 0.5 1.7
playsound minecraft:block.note_block.bit player @a ~ ~ ~ 0.5 1.4
title @a[tag=zy.cur,limit=1] actionbar ["", {"text": "", "font": "zy:hud", "color": "white"}, {"text": " ▸ ", "color": "dark_gray"}, {"translate": "zy.seal.sustenance", "fallback": "Sustenance", "color": "#d68c40"}, {"text": "  //  ", "color": "dark_gray"}, {"translate": "zy.ui.placed", "fallback": "LINKED", "color": "aqua"}]
scoreboard players set @a[tag=zy.cur,limit=1] zy.msg 30
