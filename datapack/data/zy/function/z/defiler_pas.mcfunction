scoreboard players add @s zy.sel 1
execute if score @s zy.sel matches 9.. run scoreboard players set @s zy.sel 0
function zy:sceau/requis
execute if score @s zy.pal < #req zy.tmp run return run function zy:z/defiler_pas
execute if score @s zy.sel matches 0 run function zy:msg/choix/siphon
execute if score @s zy.sel matches 1 run function zy:msg/choix/vie
execute if score @s zy.sel matches 2 run function zy:msg/choix/subsistance
execute if score @s zy.sel matches 3 run function zy:msg/choix/elan
execute if score @s zy.sel matches 4 run function zy:msg/choix/alteration
execute if score @s zy.sel matches 5 run function zy:msg/choix/effacer
execute if score @s zy.sel matches 6 run function zy:msg/choix/essence
execute if score @s zy.sel matches 7 run function zy:msg/choix/ancre
execute if score @s zy.sel matches 8 run function zy:msg/choix/reveler
