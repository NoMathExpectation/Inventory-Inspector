scoreboard players set #return inviCreate 0
scoreboard players operation #create inviCreate = @s inviCreate
scoreboard players operation #findstorage inviStorage = #create inviCreate
function invi:storage/find

function invi:pointer/find

execute store result score #rotation inviCreate run data get entity @s Rotation[0]

execute as @e[type=minecraft:marker,tag=invi_pointer_found] at @s if block ~-1 ~ ~ #minecraft:fluid run scoreboard players set #return inviCreate 1
execute as @e[type=minecraft:marker,tag=invi_pointer_found] at @s if block ~1 ~ ~ #minecraft:fluid run scoreboard players set #return inviCreate 2
execute as @e[type=minecraft:marker,tag=invi_pointer_found] at @s if block ~ ~ ~-1 #minecraft:fluid run scoreboard players set #return inviCreate 3
execute as @e[type=minecraft:marker,tag=invi_pointer_found] at @s if block ~ ~ ~1 #minecraft:fluid run scoreboard players set #return inviCreate 4

execute unless entity @e[type=minecraft:marker,tag=invi_pointer_found] run scoreboard players set #return inviCreate 0
execute unless entity @e[type=minecraft:marker,tag=invi_storage_found] run scoreboard players set #return inviCreate -1
execute if score #return inviCreate matches 0 run tellraw @s ["",{"storage":"invi:tellraw","nbt":"Name","interpret": true},{"storage":"invi:tellraw","nbt":"Error.NotFound","interpret": true},{"text": "合适的地方放置，请对准一个宽敞的地方。","color": "red"}]
execute if score #return inviCreate matches -1 run tellraw @s ["",{"storage":"invi:tellraw","nbt":"Name","interpret": true},{"storage":"invi:tellraw","nbt":"Error.NotFound","interpret": true},{"text": "玩家，请确定其是否注册过。","color": "red"}]
execute if score #return inviCreate matches 1.. as @e[type=minecraft:marker,tag=invi_pointer_found] at @s align xyz run function invi:edit/create

function invi:storage/find_clear
function invi:pointer/clear
scoreboard players reset #create inviCreate
scoreboard players reset #rotation inviCreate