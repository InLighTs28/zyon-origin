scoreboard players operation #own zy.tmp = @s zy.owner
execute as @a[tag=zy.z] if score @s zy.id = #own zy.tmp at @s run function zy:network/link_cut
