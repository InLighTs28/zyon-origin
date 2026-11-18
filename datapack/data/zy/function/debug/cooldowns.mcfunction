scoreboard players set @s zy.pulsecd 0
scoreboard players set @s zy.lock 0
scoreboard players set @e[scores={zy.drained=1..}] zy.drained 0
function zy:input/p_reset
tellraw @s ["", {"text": "▸ ", "color": "dark_aqua"}, {"translate": "zy.dbg.ok.cd", "fallback": "Cooldowns cleared.", "color": "aqua"}]
