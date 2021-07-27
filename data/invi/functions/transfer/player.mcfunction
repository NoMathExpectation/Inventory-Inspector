# 寻找箱子
scoreboard players operation #findchest inviEditChest = @s pidList
function invi:edit/find

# 寻找存储
scoreboard players operation #findstorage inviStorage = @s pidList
function invi:storage/find

# 上部复制
## 至中转箱
function invi:player/push/upper
## 至存储
execute as @e[type=minecraft:marker,tag=invi_storage_found] at @s run function invi:storage/pull/upper
## 至编辑箱
execute as @e[type=minecraft:marker,tag=invi_edit_chest_upper,tag=invi_chest_found] at @s run function invi:edit/pull
function invi:transfer/clear

# 末影复制
## 至中转箱
function invi:player/push/ender
## 至存储
execute as @e[type=minecraft:marker,tag=invi_storage_found] at @s run function invi:storage/pull/ender
## 至编辑箱
execute as @e[type=minecraft:marker,tag=invi_edit_chest_ender,tag=invi_chest_found] at @s run function invi:edit/pull
function invi:transfer/clear

# 下部复制
## 至中转箱
function invi:player/push/lower
## 至存储
execute as @e[type=minecraft:marker,tag=invi_storage_found] at @s run function invi:storage/pull/lower
item replace block 0 1 0 container.26 with minecraft:purple_stained_glass_pane{display: {Name: '{"text":"切换至末影箱/背包","italic": false,"color": "aqua","bold": true}'}, invibg: 1b}
## 至编辑箱
execute as @e[type=minecraft:marker,tag=invi_edit_chest_lower,tag=invi_chest_found] at @s run function invi:edit/pull
function invi:transfer/clear

# 
tag @e[tag=invi_storage_found] remove invi_sync

function invi:edit/find_clear
function invi:storage/find_clear