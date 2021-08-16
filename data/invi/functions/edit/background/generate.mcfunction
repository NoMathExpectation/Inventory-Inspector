# 
scoreboard players operation #findplayer pidList = @s inviEditChest
function pid:command/select/single

# 分隔符
item replace block ~ ~ ~ container.0 with minecraft:black_stained_glass_pane{display: {Name: '""'}, invibg: 1b}
item replace block ~ ~ ~ container.1 with minecraft:black_stained_glass_pane{display: {Name: '""'}, invibg: 1b}
item replace block ~ ~ ~ container.2 with minecraft:black_stained_glass_pane{display: {Name: '""'}, invibg: 1b}
item replace block ~ ~ ~ container.3 with minecraft:black_stained_glass_pane{display: {Name: '""'}, invibg: 1b}
item replace block ~ ~ ~ container.4 with minecraft:black_stained_glass_pane{display: {Name: '""'}, invibg: 1b}
item replace block ~ ~ ~ container.5 with minecraft:black_stained_glass_pane{display: {Name: '""'}, invibg: 1b}
item replace block ~ ~ ~ container.6 with minecraft:black_stained_glass_pane{display: {Name: '""'}, invibg: 1b}
item replace block ~ ~ ~ container.7 with minecraft:black_stained_glass_pane{display: {Name: '""'}, invibg: 1b}
item replace block ~ ~ ~ container.8 with minecraft:black_stained_glass_pane{display: {Name: '""'}, invibg: 1b}
item replace block ~ ~ ~ container.22 with minecraft:black_stained_glass_pane{display: {Name: '{"text": "←盔甲栏", "italic": false}'}, invibg: 1b}
item replace block ~ ~ ~ container.24 with minecraft:black_stained_glass_pane{display: {Name: '{"text": "←副手", "italic": false}'}, invibg: 1b}

# 选择的物品
execute store result score #selected inviEditChest run data get entity @a[tag=pid_selected,limit=1] SelectedItemSlot
execute if score #selected inviEditChest matches 0 run item replace block ~ ~ ~ container.0 with minecraft:green_stained_glass_pane{display: {Name: '{"text": "↓选中的物品", "italic": false, "color": "green"}'}, invibg: 1b}
execute if score #selected inviEditChest matches 1 run item replace block ~ ~ ~ container.1 with minecraft:green_stained_glass_pane{display: {Name: '{"text": "↓选中的物品", "italic": false, "color": "green"}'}, invibg: 1b}
execute if score #selected inviEditChest matches 2 run item replace block ~ ~ ~ container.2 with minecraft:green_stained_glass_pane{display: {Name: '{"text": "↓选中的物品", "italic": false, "color": "green"}'}, invibg: 1b}
execute if score #selected inviEditChest matches 3 run item replace block ~ ~ ~ container.3 with minecraft:green_stained_glass_pane{display: {Name: '{"text": "↓选中的物品", "italic": false, "color": "green"}'}, invibg: 1b}
execute if score #selected inviEditChest matches 4 run item replace block ~ ~ ~ container.4 with minecraft:green_stained_glass_pane{display: {Name: '{"text": "↓选中的物品", "italic": false, "color": "green"}'}, invibg: 1b}
execute if score #selected inviEditChest matches 5 run item replace block ~ ~ ~ container.5 with minecraft:green_stained_glass_pane{display: {Name: '{"text": "↓选中的物品", "italic": false, "color": "green"}'}, invibg: 1b}
execute if score #selected inviEditChest matches 6 run item replace block ~ ~ ~ container.6 with minecraft:green_stained_glass_pane{display: {Name: '{"text": "↓选中的物品", "italic": false, "color": "green"}'}, invibg: 1b}
execute if score #selected inviEditChest matches 7 run item replace block ~ ~ ~ container.7 with minecraft:green_stained_glass_pane{display: {Name: '{"text": "↓选中的物品", "italic": false, "color": "green"}'}, invibg: 1b}
execute if score #selected inviEditChest matches 8 run item replace block ~ ~ ~ container.8 with minecraft:green_stained_glass_pane{display: {Name: '{"text": "↓选中的物品", "italic": false, "color": "green"}'}, invibg: 1b}
scoreboard players set #selected inviEditChest -1

# 玩家信息
execute as @a[tag=pid_selected] run loot replace block ~ ~ ~ container.25 loot invi:player_head

# 切换
item replace block ~ ~ ~ container.26 with minecraft:purple_stained_glass_pane{display: {Name: '{"text": "点我在末影箱和背包间切换", "italic": false, "color": "aqua", "bold": true}'}, invibg: 1b}

# 
function pid:command/deselect/all