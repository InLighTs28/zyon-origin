scoreboard players operation #exp zy.tmp = @s zy.tier
scoreboard players operation #exp zy.tmp += @s zy.tier
execute if entity @s[advancements={zy:zyon/first_seal=true}] run scoreboard players add #exp zy.tmp 1
execute if entity @s[advancements={zy:zyon/shatter=true}] run scoreboard players add #exp zy.tmp 1
execute if entity @s[advancements={zy:zyon/colossus=true}] run scoreboard players add #exp zy.tmp 1
execute if entity @s[advancements={zy:zyon/overload=true}] run scoreboard players add #exp zy.tmp 1
execute if entity @s[advancements={zy:zyon/relay=true}] run scoreboard players add #exp zy.tmp 1
execute if entity @s[advancements={zy:zyon/collapse=true}] run scoreboard players add #exp zy.tmp 1
execute if entity @s[advancements={zy:zyon/full_net=true}] run scoreboard players add #exp zy.tmp 1
execute if entity @s[advancements={zy:zyon/anchor=true}] run scoreboard players add #exp zy.tmp 1
execute if entity @s[advancements={zy:zyon/oath=true}] run scoreboard players add #exp zy.tmp 1
execute if score #exp zy.tmp > @s zy.spgiven run function zy:aug/owe
