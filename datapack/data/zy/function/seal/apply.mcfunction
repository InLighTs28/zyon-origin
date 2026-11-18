execute unless entity @s[tag=zy.m] run function zy:seal/new
scoreboard players operation @s zy.owner = #o zy.tmp
tag @s add zy.mine
scoreboard players set @s zy.integ 120
scoreboard players add @a[tag=zy.cur,limit=1] zy.sync 12
advancement grant @a[tag=zy.cur,limit=1] only zy:zyon/first_seal
execute if score @a[tag=zy.cur,limit=1] zy.sel matches 0 run function zy:seal/apply/siphon
execute if score @a[tag=zy.cur,limit=1] zy.sel matches 1 run function zy:seal/apply/life
execute if score @a[tag=zy.cur,limit=1] zy.sel matches 2 run function zy:seal/apply/relay
execute if score @a[tag=zy.cur,limit=1] zy.sel matches 3 run function zy:seal/apply/momentum
execute if score @a[tag=zy.cur,limit=1] zy.sel matches 4 run function zy:seal/apply/alteration
execute if score @a[tag=zy.cur,limit=1] zy.sel matches 5 run function zy:seal/apply/erase
execute if score @a[tag=zy.cur,limit=1] zy.sel matches 6 run function zy:seal/apply/essence
execute if score @a[tag=zy.cur,limit=1] zy.sel matches 7 run function zy:seal/apply/anchor
execute if score @a[tag=zy.cur,limit=1] zy.sel matches 8 run function zy:seal/apply/reveal
function zy:seal/stack
function zy:ring/add
