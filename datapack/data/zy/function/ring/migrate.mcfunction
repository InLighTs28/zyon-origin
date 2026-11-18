# rings placed by pre-release builds still use leather_horse_armor: move them to tipped_arrow
data modify entity @s item.components."minecraft:potion_contents".custom_color set from entity @s item.components."minecraft:dyed_color".rgb
data remove entity @s item.components."minecraft:dyed_color"
data modify entity @s item.id set value "minecraft:tipped_arrow"
