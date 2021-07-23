#define tag invi_toggled

execute if block ~ ~ ~ minecraft:chest[facing=south,type=left] positioned ~-1 ~ ~ as @e[type=minecraft:marker,distance=..0.01,tag=invi_edit_chest_upper,tag=!invi_toggled] run function invi:edit/toggle/ender
execute if block ~ ~ ~ minecraft:chest[facing=north,type=left] positioned ~1 ~ ~ as @e[type=minecraft:marker,distance=..0.01,tag=invi_edit_chest_upper,tag=!invi_toggled] run function invi:edit/toggle/ender

execute if block ~ ~ ~ minecraft:chest[facing=west,type=left] positioned ~ ~ ~-1 as @e[type=minecraft:marker,distance=..0.01,tag=invi_edit_chest_upper,tag=!invi_toggled] run function invi:edit/toggle/ender
execute if block ~ ~ ~ minecraft:chest[facing=east,type=left] positioned ~ ~ ~1 as @e[type=minecraft:marker,distance=..0.01,tag=invi_edit_chest_upper,tag=!invi_toggled] run function invi:edit/toggle/ender

execute if block ~ ~ ~ minecraft:chest[facing=south,type=left] positioned ~-1 ~ ~ as @e[type=minecraft:marker,distance=..0.01,tag=invi_edit_chest_ender,tag=!invi_toggled] run function invi:edit/toggle/upper
execute if block ~ ~ ~ minecraft:chest[facing=north,type=left] positioned ~1 ~ ~ as @e[type=minecraft:marker,distance=..0.01,tag=invi_edit_chest_ender,tag=!invi_toggled] run function invi:edit/toggle/upper

execute if block ~ ~ ~ minecraft:chest[facing=west,type=left] positioned ~ ~ ~-1 as @e[type=minecraft:marker,distance=..0.01,tag=invi_edit_chest_ender,tag=!invi_toggled] run function invi:edit/toggle/upper
execute if block ~ ~ ~ minecraft:chest[facing=east,type=left] positioned ~ ~ ~1 as @e[type=minecraft:marker,distance=..0.01,tag=invi_edit_chest_ender,tag=!invi_toggled] run function invi:edit/toggle/upper

tag @e remove invi_toggled

scoreboard players operation #findstorage inviStorage = @s inviEditChest
function invi:storage/find
tag @e[tag=invi_storage_found] add invi_edit_update
function invi:storage/find_clear