execute as @e[type=minecraft:marker,tag=invi_storage] if score @s inviStorage = #findstorage inviStorage run tag @s add invi_storage_found
scoreboard players set #findstorage inviStorage 0