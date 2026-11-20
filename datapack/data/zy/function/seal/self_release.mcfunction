scoreboard players set @s zy.leave 0
particle minecraft:dust{color:[0.65,0.41,0.94],scale:1.4} ~ ~1 ~ 0.4 0.6 0.4 0 30 force
playsound zy:seal.dissolve player @a ~ ~ ~ 0.8 1.3
function zy:seal/clear
title @s actionbar {"translate":"zy.hud.note.msg.left","fallback":"SEAL BROKEN · YOU LEFT THE NETWORK","color":"#a569f0"}
