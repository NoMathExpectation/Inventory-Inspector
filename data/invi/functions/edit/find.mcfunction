#define tag invi_chest_found
execute as @e[type=minecraft:marker,tag=invi_edit_chest] if score @s inviEditChest = #findchest inviEditChest run tag @s add invi_chest_found
scoreboard players set #findchest inviEditChest 0