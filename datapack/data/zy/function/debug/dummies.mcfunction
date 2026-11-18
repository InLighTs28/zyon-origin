execute rotated ~ 0 positioned ^3 ^ ^ run summon minecraft:cow ~ ~ ~ {NoAI:1b,PersistenceRequired:1b,Silent:1b,Tags:["zy.dbg"],CustomName:'{"text":"TEST","color":"aqua"}'}
execute rotated ~ 0 positioned ^-3 ^ ^ run summon minecraft:zombie ~ ~ ~ {NoAI:1b,PersistenceRequired:1b,Silent:1b,Tags:["zy.dbg"],CustomName:'{"text":"TEST","color":"aqua"}'}
execute rotated ~ 0 positioned ^ ^ ^3 run summon minecraft:villager ~ ~ ~ {NoAI:1b,PersistenceRequired:1b,Silent:1b,Tags:["zy.dbg"],CustomName:'{"text":"TEST","color":"aqua"}'}
execute rotated ~ 0 positioned ^2 ^ ^-3 run summon minecraft:iron_golem ~ ~ ~ {NoAI:1b,PersistenceRequired:1b,Silent:1b,Tags:["zy.dbg"],CustomName:'{"text":"TEST","color":"aqua"}'}
execute rotated ~ 0 positioned ^-2 ^ ^-3 run summon minecraft:chicken ~ ~ ~ {NoAI:1b,PersistenceRequired:1b,Silent:1b,Tags:["zy.dbg"],CustomName:'{"text":"TEST","color":"aqua"}'}
execute rotated ~ 0 positioned ^ ^ ^5 run summon minecraft:skeleton ~ ~ ~ {NoAI:1b,PersistenceRequired:1b,Silent:1b,Tags:["zy.dbg"],CustomName:'{"text":"TEST","color":"aqua"}'}
tellraw @s ["", {"text": "▸ ", "color": "dark_aqua"}, {"translate": "zy.dbg.ok.dummies", "fallback": "6 test mobs spawned (frozen).", "color": "aqua"}]
