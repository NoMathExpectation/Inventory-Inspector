# 
scoreboard players operation #findplayer pidList = @s inviEditChest
function pid:command/select/single

# 分隔符
item replace block 0 1 0 container.27 with minecraft:black_stained_glass_pane{display: {Name: '""'}, invibg: 1b}
item replace block 0 1 0 container.28 with minecraft:black_stained_glass_pane{display: {Name: '""'}, invibg: 1b}
item replace block 0 1 0 container.29 with minecraft:black_stained_glass_pane{display: {Name: '""'}, invibg: 1b}
item replace block 0 1 0 container.30 with minecraft:black_stained_glass_pane{display: {Name: '""'}, invibg: 1b}
item replace block 0 1 0 container.31 with minecraft:black_stained_glass_pane{display: {Name: '""'}, invibg: 1b}
item replace block 0 1 0 container.32 with minecraft:black_stained_glass_pane{display: {Name: '""'}, invibg: 1b}
item replace block 0 1 0 container.33 with minecraft:black_stained_glass_pane{display: {Name: '""'}, invibg: 1b}
item replace block 0 1 0 container.34 with minecraft:black_stained_glass_pane{display: {Name: '""'}, invibg: 1b}
item replace block 0 1 0 container.35 with minecraft:black_stained_glass_pane{display: {Name: '""'}, invibg: 1b}
item replace block 0 1 0 container.49 with minecraft:black_stained_glass_pane{display: {Name: '""'}, invibg: 1b}
item replace block 0 1 0 container.51 with minecraft:black_stained_glass_pane{display: {Name: '""'}, invibg: 1b}

# 选择的物品
execute store result score #selected inviEditChest run data get entity @a[tag=pid_selected,limit=1] SelectedItemSlot
execute if score #selected inviEditChest matches 0 run item replace block 0 1 0 container.27 with minecraft:green_stained_glass_pane{display: {Name: '{"text":"↓选中的物品","italic": false,"color": "green"}'}, invibg: 1b}
execute if score #selected inviEditChest matches 1 run item replace block 0 1 0 container.28 with minecraft:green_stained_glass_pane{display: {Name: '{"text":"↓选中的物品","italic": false,"color": "green"}'}, invibg: 1b}
execute if score #selected inviEditChest matches 2 run item replace block 0 1 0 container.29 with minecraft:green_stained_glass_pane{display: {Name: '{"text":"↓选中的物品","italic": false,"color": "green"}'}, invibg: 1b}
execute if score #selected inviEditChest matches 3 run item replace block 0 1 0 container.30 with minecraft:green_stained_glass_pane{display: {Name: '{"text":"↓选中的物品","italic": false,"color": "green"}'}, invibg: 1b}
execute if score #selected inviEditChest matches 4 run item replace block 0 1 0 container.31 with minecraft:green_stained_glass_pane{display: {Name: '{"text":"↓选中的物品","italic": false,"color": "green"}'}, invibg: 1b}
execute if score #selected inviEditChest matches 5 run item replace block 0 1 0 container.32 with minecraft:green_stained_glass_pane{display: {Name: '{"text":"↓选中的物品","italic": false,"color": "green"}'}, invibg: 1b}
execute if score #selected inviEditChest matches 6 run item replace block 0 1 0 container.33 with minecraft:green_stained_glass_pane{display: {Name: '{"text":"↓选中的物品","italic": false,"color": "green"}'}, invibg: 1b}
execute if score #selected inviEditChest matches 7 run item replace block 0 1 0 container.34 with minecraft:green_stained_glass_pane{display: {Name: '{"text":"↓选中的物品","italic": false,"color": "green"}'}, invibg: 1b}
execute if score #selected inviEditChest matches 8 run item replace block 0 1 0 container.35 with minecraft:green_stained_glass_pane{display: {Name: '{"text":"↓选中的物品","italic": false,"color": "green"}'}, invibg: 1b}
scoreboard players set #selected inviEditChest -1

# 玩家信息
execute as @a[tag=pid_selected] run loot replace block ~ ~ ~ container.52 loot invi:player_head

# 切换
item replace block 0 1 0 container.53 with minecraft:purple_stained_glass_pane{display: {Name: '{"text":"切换至末影箱/背包","italic": false,"color": "aqua","bold": true}'}, invibg: 1b}

# 
function pid:command/deselect/all