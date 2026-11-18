scoreboard players set @s zy.sec 0
function zy:z/demi
execute store result score @s zy.food run data get entity @s foodLevel
function zy:reseau/portee with storage zy:m r
execute as @e[tag=zy.mien,tag=zy.s0] at @s run function zy:type/siphon/seconde
execute as @e[tag=zy.mien,tag=zy.s2,type=player,tag=!zy.cur] run function zy:type/subsistance/seconde
execute if entity @e[tag=zy.mien,tag=zy.s4,limit=1] run function zy:type/alteration/seconde
execute as @e[tag=zy.mien,tag=zy.s5] run function zy:type/perception/effacer
execute as @e[tag=zy.mien,tag=zy.s8] run function zy:type/perception/reveler
function zy:type/essence/seconde
execute as @e[tag=zy.mien,scores={zy.acc=1..}] run function zy:type/vie/decroitre
execute if score @s zy.pal matches 3.. as @e[tag=zy.mien] at @s run function zy:reseau/surcharge_test
function zy:z/compter
function zy:z/cout
