execute store result score #ok zy.tmp run function zy:hud/chrono/lock
execute if score #ok zy.tmp matches 0 store result score #ok zy.tmp run function zy:hud/chrono/oath
execute if score #ok zy.tmp matches 0 store result score #ok zy.tmp run function zy:hud/chrono/pulse
execute if score #ok zy.tmp matches 0 store result score #ok zy.tmp run function zy:hud/chrono/pcd
execute if score #ok zy.tmp matches 0 store result score #ok zy.tmp run function zy:hud/chrono/ready
execute if score #ok zy.tmp matches 1 run scoreboard players operation #q_ring zy.tmp = #ce zy.tmp
execute store result score #ok zy.tmp run function zy:hud/chrono/charge
execute if score #ok zy.tmp matches 0 store result score #ok zy.tmp run function zy:hud/chrono/ess
execute if score #ok zy.tmp matches 1 run scoreboard players operation #q_tl zy.tmp = #ce zy.tmp
execute store result score #ok zy.tmp run function zy:hud/chrono/event
execute if score #ok zy.tmp matches 1 run scoreboard players operation #q_tr zy.tmp = #ce zy.tmp
execute store result score #ok zy.tmp run function zy:hud/chrono/drift
execute if score #ok zy.tmp matches 1 run scoreboard players operation #q_bl zy.tmp = #ce zy.tmp
execute store result score #ok zy.tmp run function zy:hud/chrono/integ
execute if score #ok zy.tmp matches 1 run scoreboard players operation #q_br zy.tmp = #ce zy.tmp
