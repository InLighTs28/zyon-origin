# encode #c (generic): frame = #ct*60/#cm (or rising), slot = ++#cn
scoreboard players add #cn zy.tmp 1
scoreboard players operation #cf zy.tmp = #ct zy.tmp
execute if score #cr zy.tmp matches 1 run scoreboard players operation #cf zy.tmp = #cm zy.tmp
execute if score #cr zy.tmp matches 1 run scoreboard players operation #cf zy.tmp -= #ct zy.tmp
scoreboard players operation #cf zy.tmp *= #60 zy.tmp
scoreboard players operation #cf zy.tmp /= #cm zy.tmp
execute if score #cf zy.tmp matches 61.. run scoreboard players set #cf zy.tmp 60
execute if score #cf zy.tmp matches ..-1 run scoreboard players set #cf zy.tmp 0
execute if score #cs zy.tmp matches 100.. run scoreboard players set #cs zy.tmp 99
execute if score #cs zy.tmp matches ..-1 run scoreboard players set #cs zy.tmp 0
scoreboard players operation #ce zy.tmp = #cv zy.tmp
scoreboard players operation #ce zy.tmp *= #10 zy.tmp
scoreboard players operation #ce zy.tmp += #cn zy.tmp
scoreboard players operation #ce zy.tmp *= #100 zy.tmp
scoreboard players operation #ce zy.tmp += #cs zy.tmp
scoreboard players operation #ce zy.tmp *= #100 zy.tmp
scoreboard players operation #ce zy.tmp += #cf zy.tmp
