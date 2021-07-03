#define tag invi_toggled

execute if block ~ ~ ~ minecraft:chest[facing=south,type=right] positioned ~-1 ~ ~ as @e[type=minecraft:marker,distance=0.01,tag=invi_edit_chest_upper,tag=!invi_toggled] run function invi:edit/toggle/ender
execute if block ~ ~ ~ minecraft:chest[facing=north,type=left] positioned ~-1 ~ ~ as @e[type=minecraft:marker,distance=0.01,tag=invi_edit_chest_upper,tag=!invi_toggled] run function invi:edit/toggle/ender

execute if block ~ ~ ~ minecraft:chest[facing=west,type=right] positioned ~ ~ ~-1 as @e[type=minecraft:marker,distance=0.01,tag=invi_edit_chest_upper,tag=!invi_toggled] run function invi:edit/toggle/ender
execute if block ~ ~ ~ minecraft:chest[facing=east,type=left] positioned ~ ~ ~-1 as @e[type=minecraft:marker,distance=0.01,tag=invi_edit_chest_upper,tag=!invi_toggled] run function invi:edit/toggle/ender

tag @e remove invi_toggled

scoreboard players operation #findplayer pidList = @s inviEditChest
function pid:command/select/single
advancement grant @a[tag=pid_selected] only invi:player/inventory_check
function pid:command/deselect/all