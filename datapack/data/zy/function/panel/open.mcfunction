function zy:rcon/defaults
playsound zy:console.open player @s ~ ~ ~ 0.5 1.2
execute if score @s zy.sel matches 0 run return run function zy:panel/page/siphon
execute if score @s zy.sel matches 1 run return run function zy:panel/page/life
execute if score @s zy.sel matches 2 run return run function zy:panel/page/relay
execute if score @s zy.sel matches 3 run return run function zy:panel/page/momentum
execute if score @s zy.sel matches 4 run return run function zy:panel/page/alteration
execute if score @s zy.sel matches 5 run return run function zy:panel/page/erase
execute if score @s zy.sel matches 6 run return run function zy:panel/page/essence
execute if score @s zy.sel matches 7 run return run function zy:panel/page/anchor
execute if score @s zy.sel matches 8 run return run function zy:panel/page/reveal
function zy:panel/page/siphon
