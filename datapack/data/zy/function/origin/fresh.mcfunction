function zy:core/init
function zy:rcon/defaults
scoreboard players set @s zy.evcd 25
scoreboard players set @s zy.sync 50
scoreboard players set @s zy.spgiven 0
scoreboard players set @s zy.sppend 0
function zy:core/stats
function zy:hud/update
tag @s add zy.cur
function zy:msg/boot
tag @s remove zy.cur
function zy:cfg/hud_guide
