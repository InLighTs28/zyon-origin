scoreboard objectives add zy.id dummy
scoreboard objectives add zy.owner dummy
scoreboard objectives add zy.uid dummy
scoreboard objectives add zy.sel dummy
scoreboard objectives add zy.res dummy
scoreboard objectives add zy.tier dummy
scoreboard objectives add zy.tierold dummy
scoreboard objectives add zy.cap dummy
scoreboard objectives add zy.range dummy
scoreboard objectives add zy.rate dummy
scoreboard objectives add zy.mul dummy
scoreboard objectives add zy.blast dummy
scoreboard objectives add zy.hp dummy
scoreboard objectives add zy.dmg dummy
scoreboard objectives add zy.acc dummy
scoreboard objectives add zy.gain dummy
scoreboard objectives add zy.cost dummy
scoreboard objectives add zy.alive dummy
scoreboard objectives add zy.tmp dummy
scoreboard objectives add zy.count dummy
scoreboard objectives add zy.siphons dummy
scoreboard objectives add zy.stack dummy
scoreboard objectives add zy.drained dummy
scoreboard objectives add zy.given dummy
scoreboard objectives add zy.over dummy
scoreboard objectives add zy.pulse dummy
scoreboard objectives add zy.oath dummy
scoreboard objectives add zy.lock dummy
scoreboard objectives add zy.msg dummy
scoreboard objectives add zy.pulsecd dummy
scoreboard objectives add zy.esskeep dummy
scoreboard objectives add zy.mom dummy
scoreboard objectives add zy.sec dummy
scoreboard objectives add zy.food dummy
scoreboard objectives add zy.t dummy
scoreboard objectives add zy.earm dummy
scoreboard objectives add zy.espd dummy
scoreboard objectives add zy.eatk dummy
scoreboard objectives add zy.ehp dummy
scoreboard objectives add zy.layer dummy
scoreboard objectives add zy.stype dummy
scoreboard objectives add zy.spin dummy
scoreboard objectives add zy.age dummy
scoreboard objectives add zy.rpct dummy
scoreboard objectives add zy.lpct dummy
scoreboard objectives add zy.ppct dummy
scoreboard objectives add zy.hw dummy
scoreboard objectives add zy.rs dummy
scoreboard objectives add zy.off dummy
scoreboard objectives add zy.dorm dummy
scoreboard objectives add zy.vy dummy
scoreboard objectives add zy.hold dummy
scoreboard objectives add zy.act dummy
scoreboard objectives add zy.last dummy
scoreboard objectives add zy.note dummy
scoreboard objectives add zy.hop dummy
scoreboard objectives add zy.sig dummy
scoreboard objectives add zy.eff dummy
scoreboard objectives add zy.mr dummy
scoreboard objectives add zy.charge dummy
scoreboard objectives add zy.cmode dummy
scoreboard objectives add zy.dial dummy
scoreboard objectives add zy.con dummy
scoreboard objectives add zy.chold dummy
scoreboard objectives add zy.pcur dummy
scoreboard objectives add zy.sigmin dummy
scoreboard objectives add zy.pready dummy
scoreboard objectives add zy.timer dummy
scoreboard objectives add zy.flux10 dummy
scoreboard objectives add zy.res10 dummy
scoreboard objectives add zy.hold3 dummy
scoreboard objectives add zy.rnd dummy
scoreboard objectives add zy.relmul dummy
scoreboard objectives add zy.spgiven dummy
scoreboard objectives add zy.sppend dummy
scoreboard objectives add zy.spreset dummy
scoreboard objectives add zy.sync dummy
scoreboard objectives add zy.integ dummy
scoreboard objectives add zy.evt dummy
scoreboard objectives add zy.evcd dummy
scoreboard objectives add zy.crit dummy
scoreboard objectives add zy.sigt dummy
scoreboard objectives add zy.idle dummy
scoreboard objectives add zy.ndorm dummy
scoreboard objectives add zy.hov dummy
scoreboard objectives add zy.ntot dummy
scoreboard objectives add zy.view dummy
scoreboard objectives add zy.hpcd dummy
scoreboard objectives add zy.hrdy dummy
scoreboard objectives add zy.qring dummy
scoreboard objectives add zy.qtl dummy
scoreboard objectives add zy.qtr dummy
scoreboard objectives add zy.qbl dummy
scoreboard objectives add zy.qbr dummy
scoreboard objectives add zy.qfx dummy
scoreboard objectives add zy.alert dummy
scoreboard objectives add zy.mode dummy
scoreboard objectives add zy.hsec dummy
scoreboard objectives add zy.n0 dummy
scoreboard objectives add zy.n1 dummy
scoreboard objectives add zy.n2 dummy
scoreboard objectives add zy.n3 dummy
scoreboard objectives add zy.n4 dummy
scoreboard objectives add zy.n5 dummy
scoreboard objectives add zy.n6 dummy
scoreboard objectives add zy.n7 dummy
scoreboard objectives add zy.n8 dummy
scoreboard objectives add zy.p0 dummy
scoreboard objectives add zy.p1 dummy
scoreboard objectives add zy.p2 dummy
scoreboard objectives add zy.p3 dummy
scoreboard objectives add zy.p4 dummy
scoreboard objectives add zy.p5 dummy
scoreboard objectives add zy.p6 dummy
scoreboard objectives add zy.p7 dummy
scoreboard objectives add zy.p8 dummy
scoreboard objectives add zy.p9 dummy
scoreboard objectives add zy.p10 dummy
scoreboard objectives add zy.p11 dummy
scoreboard objectives add zy.p12 dummy
scoreboard objectives add zy.p13 dummy
scoreboard objectives add zy.p14 dummy
scoreboard objectives add zy.p15 dummy
scoreboard objectives add zy.p16 dummy
scoreboard objectives add zy.a0 dummy
scoreboard objectives add zy.a1 dummy
scoreboard objectives add zy.a2 dummy
scoreboard objectives add zy.a3 dummy
scoreboard objectives add zy.a4 dummy
scoreboard objectives add zy.a5 dummy
scoreboard objectives add zy.a6 dummy
scoreboard objectives add zy.a7 dummy
scoreboard objectives add zy.a8 dummy
scoreboard objectives add zy.a9 dummy
scoreboard objectives add zy.a10 dummy
scoreboard objectives add zy.a11 dummy
scoreboard objectives add zy.a12 dummy
scoreboard objectives add zy.a13 dummy
scoreboard objectives add zy.a14 dummy
scoreboard objectives add zy.death deathCount
scoreboard objectives add zy.cfg trigger
scoreboard objectives add zy.dbg dummy {"text":"ZYON · DEBUG","color":"aqua","bold":true}
scoreboard players add #next zy.id 0
scoreboard players add #uid zy.uid 0
scoreboard players set #10 zy.tmp 10
scoreboard players set #100 zy.tmp 100
scoreboard players set #m1 zy.tmp -1
scoreboard players set #k5 zy.tmp 5
scoreboard players set #k4 zy.tmp 4
scoreboard players set #k20 zy.tmp 20
scoreboard players set #20 zy.tmp 20
scoreboard players set #60 zy.tmp 60
scoreboard players set #k8 zy.tmp 8
team add zy.ghost
team modify zy.ghost nametagVisibility never
team modify zy.ghost seeFriendlyInvisibles false
data merge storage zy:m {r:{r:8,r2:12},ring:{m:7100,c:16777215},dec:{w:0,f:0,s:"0"},b:{d:4},c:{h:0}}
kill @e[type=text_display,tag=zy.mk]
kill @e[type=text_display,tag=zy.ring]
team add zy.ghost
team modify zy.ghost seeFriendlyInvisibles true
execute as @e[tag=zy.m] unless score @s zy.owner matches 1.. run function zy:seal/clear
