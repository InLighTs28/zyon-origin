tag @s add zy.dying
scoreboard players set @s zy.uid 0
scoreboard players set @s zy.age 7
scoreboard players operation #v zy.tmp = @s zy.rs
scoreboard players set #k zy.tmp 5
scoreboard players operation #v zy.tmp *= #k zy.tmp
scoreboard players set #k zy.tmp 2
scoreboard players operation #v zy.tmp /= #k zy.tmp
function zy:util/dec
function zy:ring/scale_slow with storage zy:m dec
scoreboard players operation #type zy.tmp = @s zy.stype
scoreboard players operation #lay zy.tmp = @s zy.layer
scoreboard players set #mode zy.tmp 3
function zy:ring/glyph
function zy:ring/text with storage zy:m ring
data merge entity @s {brightness:{sky:6,block:6}}
