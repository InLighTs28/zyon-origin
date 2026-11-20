# op only: players can be sealed without crouching (PvP servers)
scoreboard players set #pvp zy.cfg 1
tellraw @s {"translate":"zy.admin.pvp_on","fallback":"ZyoN: PvP mode ON, players can be sealed without consent.","color":"red"}
