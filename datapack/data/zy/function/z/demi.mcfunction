execute as @e[tag=zy.mien,tag=zy.s3,tag=!zy.cur] at @s unless entity @a[tag=zy.cur,distance=..5] run function zy:type/elan/tirer
execute if score @s zy.pal matches 6.. if predicate zy:accroupi if entity @s[nbt={OnGround:0b}] run effect give @e[tag=zy.mien,tag=zy.s3,tag=!zy.cur] minecraft:levitation 1 1 true
