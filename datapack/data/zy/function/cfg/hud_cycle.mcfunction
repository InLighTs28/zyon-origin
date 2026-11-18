execute if entity @s[tag=zy.hudoff] run return run function zy:cfg/hud_auto
tag @s add zy.hudoff
tellraw @s ["", {"translate": "zy.cfg.hud_off2", "fallback": "Supervision HUD: hidden", "color": "gray"}]
