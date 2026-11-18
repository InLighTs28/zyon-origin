scoreboard players set @s zy.oath 160
playsound zy:tier.up player @a ~ ~ ~ 1 1.2
playsound zy:net.up player @a ~ ~ ~ 1 0.6
particle minecraft:flash ~ ~1 ~ 0 0 0 0 1 force
execute as @e[tag=zy.mine] at @s run particle dust{color:[0.86,0.47,1.00],scale:2.0} ~ ~0.3 ~ 0.6 0.2 0.6 0 40 force
function zy:msg/oath
advancement grant @s only zy:zyon/oath
