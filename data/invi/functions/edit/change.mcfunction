#define score_holder #changed 内容有更改

execute store success score #changed inviEditChest run data modify entity @s data.LatestItem set from block ~ ~ ~ Items
execute if score #changed inviEditChest matches 1 if entity @s[tag=invi_edit_chest_upper] run function invi:transfer/upper
execute if score #changed inviEditChest matches 1 if entity @s[tag=invi_edit_chest_lower] run function invi:transfer/lower
execute if score #changed inviEditChest matches 1 if entity @s[tag=invi_edit_chest_ender] run function invi:transfer/ender