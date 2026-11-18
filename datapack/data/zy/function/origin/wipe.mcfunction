execute if score @s zy.id matches 1.. run function zy:core/begin
execute if score @s zy.id matches 1.. as @e[tag=zy.owned] run function zy:seal/clear
execute if score @s zy.id matches 1.. run function zy:type/essence/clean
execute if score @s zy.id matches 1.. run function zy:core/end
execute unless entity @s[tag=zy.m] run function zy:origin/wipe_all
execute if entity @s[tag=zy.m] run function zy:origin/wipe_op
advancement revoke @s from zy:zyon/root
tag @s remove zy.z
tag @s remove zy.adv
tag @s remove zy.cur
tag @s remove zy.iso
tag @s remove zy.hudoff
tag @s remove zy.hudon
tag @s remove zy.self
tag @s remove zy.mounthost
tag @s remove zy.dbgnew
tag @s remove zy.dbgone
tag @s remove zy.debug
tag @s remove zy.hov
tag @s remove zy.holdp
tag @s remove zy.conp
tag @s remove zy.src
tag @s remove zy.overload
tag @s remove zy.dying
tag @s remove zy.fxp
tag @s remove zy.mine
tag @s remove zy.owned
tag @s remove zy.tgt
tag @s remove zy.resist
tag @s remove zy.reject
