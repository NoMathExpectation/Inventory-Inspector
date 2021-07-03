execute if block ~ ~ ~1 #minecraft:fluid run scoreboard players set #return inviCreate 4
execute if block ~ ~ ~-1 #minecraft:fluid run scoreboard players set #return inviCreate 3
execute if block ~-1 ~ ~ #minecraft:fluid run scoreboard players set #return inviCreate 1
execute if block ~1 ~ ~ #minecraft:fluid run scoreboard players set #return inviCreate 2

execute if score #return inviCreate matches 1 run summon minecraft:marker ~-1 ~ ~ {Tags:["invi_edit_init","invi_edit_chest_upper","invi_edit_chest"]}
execute if score #return inviCreate matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["invi_edit_init","invi_edit_chest_lower","invi_edit_chest"]}
execute if score #return inviCreate matches 1 run setblock ~-1 ~ ~ minecraft:chest[facing=south,type=left]
execute if score #return inviCreate matches 1 run setblock ~ ~ ~ minecraft:chest[facing=south,type=right]

execute if score #return inviCreate matches 2 run summon minecraft:marker ~1 ~ ~ {Tags:["invi_edit_init","invi_edit_chest_lower","invi_edit_chest"]}
execute if score #return inviCreate matches 2 run summon minecraft:marker ~ ~ ~ {Tags:["invi_edit_init","invi_edit_chest_upper","invi_edit_chest"]}
execute if score #return inviCreate matches 2 run setblock ~1 ~ ~ minecraft:chest[facing=south,type=right]
execute if score #return inviCreate matches 2 run setblock ~ ~ ~ minecraft:chest[facing=south,type=left]

execute if score #return inviCreate matches 3 run summon minecraft:marker ~ ~ ~-1 {Tags:["invi_edit_init","invi_edit_chest_upper","invi_edit_chest"]}
execute if score #return inviCreate matches 3 run summon minecraft:marker ~ ~ ~ {Tags:["invi_edit_init","invi_edit_chest_lower","invi_edit_chest"]}
execute if score #return inviCreate matches 3 run setblock ~ ~ ~-1 minecraft:chest[facing=west,type=left]
execute if score #return inviCreate matches 3 run setblock ~ ~ ~ minecraft:chest[facing=west,type=right]

execute if score #return inviCreate matches 4 run summon minecraft:marker ~ ~ ~1 {Tags:["invi_edit_init","invi_edit_chest_lower","invi_edit_chest"]}
execute if score #return inviCreate matches 4 run summon minecraft:marker ~ ~ ~ {Tags:["invi_edit_init","invi_edit_chest_upper","invi_edit_chest"]}
execute if score #return inviCreate matches 4 run setblock ~ ~ ~1 minecraft:chest[facing=west,type=right]
execute if score #return inviCreate matches 4 run setblock ~ ~ ~ minecraft:chest[facing=west,type=left]