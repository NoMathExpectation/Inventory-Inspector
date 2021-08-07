summon minecraft:marker 0 1 0 {Tags:["invi_storage_init","invi_storage"]}
scoreboard players operation @e[type=minecraft:marker,tag=invi_storage_init] inviStorage = @s pidList
tag @e remove invi_storage_init
tag @s add invi_player_update