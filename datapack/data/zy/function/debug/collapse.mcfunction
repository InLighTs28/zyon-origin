function zy:debug/guard
function zy:core/begin
execute as @e[tag=zy.owned,tag=!zy.dormant] at @s run function zy:network/sleep
scoreboard players set @e[tag=zy.owned,tag=zy.dormant] zy.dorm 27
function zy:core/end
tellraw @s ["", {"text": "▸ ", "color": "dark_aqua"}, {"translate": "zy.dbg.ok.collapse", "fallback": "Network forced dormant: collapse in 3 s unless you get back in range.", "color": "aqua"}]
