scoreboard players operation #findstorage inviStorage = @s pidList
function invi:storage/find

function invi:edit/push

execute as @e[type=minecraft:marker,tag=invi_storage_found] run function invi:storage/pull/lower
tag @e[type=minecraft:marker,tag=invi_storage_found] add invi_sync

function invi:transfer/clear
function invi:storage/find_clear