function zy:debug/guard
execute if score @s zy.tier matches ..2 run function zy:debug/tier/3
execute unless entity @e[tag=zy.dbg,limit=1] run function zy:debug/dummies
scoreboard players operation #keepsel zy.tmp = @s zy.sel
function zy:core/begin
tag @e[tag=zy.dbg,limit=1,sort=nearest,type=!player] add zy.dbgone
scoreboard players set @s zy.sel 1
execute as @e[tag=zy.dbgone] at @s run function zy:debug/force_apply
scoreboard players set @s zy.sel 2
execute as @e[tag=zy.dbgone] at @s run function zy:debug/force_apply
scoreboard players set @s zy.sel 3
execute as @e[tag=zy.dbgone] at @s run function zy:debug/force_apply
scoreboard players set @s zy.sel 4
execute as @e[tag=zy.dbgone] at @s run function zy:debug/force_apply
tag @e[tag=zy.dbgone] remove zy.dbgone
function zy:core/end
scoreboard players operation @s zy.sel = #keepsel zy.tmp
tellraw @s ["", {"text": "▸ ", "color": "dark_aqua"}, {"translate": "zy.dbg.ok.over", "fallback": "4 seals on the nearest test mob: overload in 2 s. Step back!", "color": "aqua"}]
