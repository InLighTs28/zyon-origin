scoreboard players remove @s zy.layer 1
scoreboard players set #mode zy.tmp 0
scoreboard players operation #type zy.tmp = @s zy.stype
scoreboard players operation #lay zy.tmp = @s zy.layer
function zy:ring/glyph
function zy:ring/text with storage zy:m ring
