scoreboard players operation #eui zy.tmp = #emax zy.tmp
scoreboard players operation #eui zy.tmp *= #10 zy.tmp
scoreboard players operation #eui zy.tmp += @s zy.epk
scoreboard players operation #eui zy.tmp *= #10 zy.tmp
scoreboard players operation #ef zy.tmp = @s zy.ecd
scoreboard players operation #ef zy.tmp *= #10 zy.tmp
scoreboard players operation #ef zy.tmp /= #erec zy.tmp
execute if score @s zy.epk >= #emax zy.tmp run scoreboard players set #ef zy.tmp 0
scoreboard players operation #eui zy.tmp += #ef zy.tmp
execute unless score @s zy.view matches 1.. run scoreboard players set #eui zy.tmp 0
execute unless score @s zy.qemit = #eui zy.tmp run function zy:emitter/ui_push
