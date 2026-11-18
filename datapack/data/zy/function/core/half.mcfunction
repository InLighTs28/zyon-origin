execute if score @s zy.p5 matches 0 as @e[tag=zy.mine,tag=zy.s3,tag=!zy.cur,tag=!zy.resist] at @s unless entity @a[tag=zy.cur,distance=..3] run function zy:type/momentum/pull
execute if score @s zy.p5 matches 1 as @e[tag=zy.mine,tag=zy.s3,tag=!zy.cur,tag=!zy.resist] at @s unless entity @a[tag=zy.cur,distance=..5] run function zy:type/momentum/pull
execute if score @s zy.p5 matches 2 as @e[tag=zy.mine,tag=zy.s3,tag=!zy.cur,tag=!zy.resist] at @s unless entity @a[tag=zy.cur,distance=..8] run function zy:type/momentum/pull
execute if score @s zy.tier matches 6.. if predicate zy:sneaking if entity @s[nbt={OnGround:0b}] run effect give @e[tag=zy.mine,tag=zy.s3,tag=!zy.cur,tag=!zy.resist] minecraft:levitation 1 1 true
function zy:hud/update
