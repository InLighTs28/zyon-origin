function zy:debug/guard
execute rotated ~ 0 positioned ^ ^ ^5 run summon minecraft:cow ~ ~ ~ {NoAI:1b,PersistenceRequired:1b,Silent:1b,Tags:["zy.dbg","zy.dbgnew"],CustomName:'{"text":"RELAY","color":"aqua"}'}
execute rotated ~ 0 positioned ^ ^ ^12 run summon minecraft:cow ~ ~ ~ {NoAI:1b,PersistenceRequired:1b,Silent:1b,Tags:["zy.dbg","zy.dbgnew"],CustomName:'{"text":"RELAY","color":"aqua"}'}
execute rotated ~ 0 positioned ^ ^ ^19 run summon minecraft:cow ~ ~ ~ {NoAI:1b,PersistenceRequired:1b,Silent:1b,Tags:["zy.dbg","zy.dbgnew"],CustomName:'{"text":"RELAY","color":"aqua"}'}
execute rotated ~ 0 positioned ^ ^ ^26 run summon minecraft:cow ~ ~ ~ {NoAI:1b,PersistenceRequired:1b,Silent:1b,Tags:["zy.dbg","zy.dbgnew"],CustomName:'{"text":"RELAY","color":"aqua"}'}
scoreboard players operation #keepsel zy.tmp = @s zy.sel
scoreboard players set @s zy.sel 1
function zy:core/begin
execute as @e[tag=zy.dbgnew] at @s run function zy:debug/force_apply
function zy:core/end
scoreboard players operation @s zy.sel = #keepsel zy.tmp
tag @e[tag=zy.dbgnew] remove zy.dbgnew
tellraw @s ["", {"text": "▸ ", "color": "dark_aqua"}, {"translate": "zy.dbg.ok.relay", "fallback": "Relay line: 4 cows sealed with Life, 7 blocks apart. Walk away to watch the network relay.", "color": "aqua"}]
