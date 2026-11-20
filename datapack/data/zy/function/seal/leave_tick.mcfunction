execute if score @s zy.owner = @s zy.id run return 0
execute if predicate zy:sneaking run scoreboard players add @s zy.leave 1
execute unless predicate zy:sneaking run scoreboard players set @s zy.leave 0
execute if score @s zy.leave matches 20 run title @s actionbar {"translate":"zy.hud.note.msg.leaving","fallback":"KEEP CROUCHING TO BREAK THE SEAL","color":"#ffc040"}
execute if score @s zy.leave matches 80.. run function zy:seal/self_release
