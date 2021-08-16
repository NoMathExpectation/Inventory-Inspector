summon minecraft:marker 0 1 0 {Tags:["invi_storage_init","invi_storage"],data:{Upper:[],Lower:[],Ender:[],Title:"",Head:{}}}

scoreboard players operation @e[type=minecraft:marker,tag=invi_storage_init] inviStorage = @s pidList
tag @s add pid_selected
setblock 0 1 0 oak_sign{Text1:'[{"selector": "@a[tag=pid_selected]"},{"text": "的物品"}]'}
tag @s remove pid_selected
data modify entity @e[tag=invi_storage_init,limit=1] data.Title set from block 0 1 0 Text1

function invi:transfer/check
loot replace block 0 1 0 container.25 loot invi:player_head
data modify entity @e[tag=invi_storage_init,limit=1] data.Head set from block 0 1 0 Items[{Slot:25b}]
function invi:transfer/clear

tag @e remove invi_storage_init
tag @s add invi_player_update