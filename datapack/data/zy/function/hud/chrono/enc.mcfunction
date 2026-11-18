scoreboard players operation #cf zy.tmp = #ct zy.tmp
execute if score #cr zy.tmp matches 1 run scoreboard players operation #cf zy.tmp = #cm zy.tmp
execute if score #cr zy.tmp matches 1 run scoreboard players operation #cf zy.tmp -= #ct zy.tmp
scoreboard players operation #cf zy.tmp *= #cn zy.tmp
scoreboard players operation #cf zy.tmp += #cm zy.tmp
scoreboard players remove #cf zy.tmp 1
scoreboard players operation #cf zy.tmp /= #cm zy.tmp
execute if score #cf zy.tmp > #cn zy.tmp run scoreboard players operation #cf zy.tmp = #cn zy.tmp
execute if score #cf zy.tmp matches ..0 run scoreboard players set #cf zy.tmp 1
scoreboard players operation #ce zy.tmp = #cc zy.tmp
scoreboard players operation #ce zy.tmp *= #10 zy.tmp
scoreboard players operation #ce zy.tmp += #cu zy.tmp
scoreboard players operation #ce zy.tmp += #ck zy.tmp
scoreboard players operation #ce zy.tmp += #ck zy.tmp
scoreboard players operation #ce zy.tmp *= #100 zy.tmp
scoreboard players operation #ce zy.tmp += #cf zy.tmp
