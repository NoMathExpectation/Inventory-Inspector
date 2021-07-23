# 寻找箱子
scoreboard players operation #findchest inviEditChest = @s inviStorage
function invi:edit/find

# 上部复制
## 至中转箱
function invi:storage/push/upper
## 至编辑箱
execute as @e[type=minecraft:marker,tag=invi_edit_chest_upper,tag=invi_chest_found] at @s run function invi:edit/pull
function invi:transfer/clear

# 末影复制
## 至中转箱
function invi:storage/push/ender
## 至编辑箱
execute as @e[type=minecraft:marker,tag=invi_edit_chest_ender,tag=invi_chest_found] at @s run function invi:edit/pull
function invi:transfer/clear

# 下部复制
## 至中转箱
function invi:storage/push/lower
item replace block 0 1 0 container.26 with minecraft:purple_stained_glass_pane{display: {Name: '{"text":"切换至末影箱/背包","italic": false,"color": "aqua","bold": true}'}, invibg: 1b}
## 至编辑箱
execute as @e[type=minecraft:marker,tag=invi_edit_chest_lower,tag=invi_chest_found] at @s run function invi:edit/pull
function invi:transfer/clear

# 
function invi:edit/find_clear
