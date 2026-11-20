function zy:rcon/defaults
playsound zy:ui.tick player @s ~ ~ ~ 0.5 1.4
execute if score @s zy.cfg matches 900 run return run function zy:panel/page/siphon
execute if score @s zy.cfg matches 901 run return run function zy:panel/page/life
execute if score @s zy.cfg matches 902 run return run function zy:panel/page/relay
execute if score @s zy.cfg matches 903 run return run function zy:panel/page/momentum
execute if score @s zy.cfg matches 904 run return run function zy:panel/page/alteration
execute if score @s zy.cfg matches 905 run return run function zy:panel/page/erase
execute if score @s zy.cfg matches 906 run return run function zy:panel/page/essence
execute if score @s zy.cfg matches 907 run return run function zy:panel/page/anchor
execute if score @s zy.cfg matches 908 run return run function zy:panel/page/reveal
