scoreboard players set @a[tag=zy.cur,limit=1] zy.note 93
scoreboard players set @a[tag=zy.cur,limit=1] zy.msg 50
execute as @a[tag=zy.cur,limit=1] at @s run playsound zy:seal.resist player @s ~ ~ ~ 0.6 1.2
execute as @e[tag=zy.tgt,type=player,limit=1] run title @s actionbar {"translate":"zy.hud.note.msg.consent_ask","fallback":"A ZYON WANTS TO SEAL YOU · CROUCH TO ACCEPT","color":"#ffc040"}
