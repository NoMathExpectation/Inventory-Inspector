function invi:transfer/check

# 同步
execute as @e[type=minecraft:marker,tag=invi_sync] run function invi:storage/sync

# 玩家
execute as @a at @s run function invi:player/main

# 销毁拾取的背景
execute as @e[type=minecraft:hopper_minecart] run function invi:edit/background/clear/hopper_minecart

# 编辑箱
execute as @e[type=minecraft:marker,tag=invi_edit_chest] at @s run function invi:edit/main