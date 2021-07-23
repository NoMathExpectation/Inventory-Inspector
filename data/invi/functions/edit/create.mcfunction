# 
scoreboard players set #return inviCreate 0

scoreboard players operation #findplayer pidList = #create inviCreate
function pid:command/select/single

scoreboard players operation #findstorage inviStorage = #create inviCreate
function invi:storage/find

execute if score #rotation inviCreate matches ..-1 run scoreboard players add #rotation inviCreate 360
scoreboard players operation #rotation inviCreate /= #const45 inviCreate
execute unless score #rotation inviCreate matches 0..7 run tellraw @a[tag=pid_selected] ["",{"storage":"invi:tellraw","nbt":"Name","interpret": true},{"storage":"invi:tellraw","nbt":"Error.IllegalArgument","interpret": true},{"text": "朝向","color": "red"},{"score":{"objective": "inviCreate","name": "#rotation"},"color": "red"}]
scoreboard players add #rotation inviCreate 4
scoreboard players operation #rotation inviCreate %= #const8 inviCreate

# 旋转角，0为SW，1为WS，2为WN，3为NW，4为NE，5为EN，6为ES，7为SE
execute if score #rotation inviCreate matches 0 run function invi:edit/create/sw
execute if score #rotation inviCreate matches 1 run function invi:edit/create/ws
execute if score #rotation inviCreate matches 2 run function invi:edit/create/wn
execute if score #rotation inviCreate matches 3 run function invi:edit/create/nw
execute if score #rotation inviCreate matches 4 run function invi:edit/create/ne
execute if score #rotation inviCreate matches 5 run function invi:edit/create/en
execute if score #rotation inviCreate matches 6 run function invi:edit/create/es
execute if score #rotation inviCreate matches 7 run function invi:edit/create/se

# 
scoreboard players operation @e[type=minecraft:marker,tag=invi_edit_init] inviEditChest = #create inviCreate
data modify block ~ ~ ~ Lock set value "§d§k§d编辑用钥匙§d§k"
tag @e[type=minecraft:marker,tag=invi_edit_init] remove invi_edit_init

function pid:command/deselect/all

tag @e[tag=invi_storage_found] add invi_edit_update
function invi:storage/find_clear