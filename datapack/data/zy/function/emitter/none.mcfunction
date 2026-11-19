scoreboard players set @s zy.use 0
scoreboard players set #eui zy.tmp 0
execute unless score @s zy.qemit = #eui zy.tmp run function zy:emitter/ui_push
