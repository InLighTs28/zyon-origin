$execute as @e[tag=zy.owned,tag=!zy.live] at @s if entity @e[tag=zy.live,tag=zy.s2,tag=!zy.cur,distance=..$(r2)] run function zy:network/join_relay
$execute as @e[tag=zy.owned,tag=!zy.live] at @s if entity @e[tag=zy.live,distance=..$(r)] run function zy:network/join
