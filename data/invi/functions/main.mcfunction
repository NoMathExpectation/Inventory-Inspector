function invi:transfer/check

# 玩家物品栏有改变
execute as @a[tag=invi_player_update] run function invi:transfer/player
tag @a remove invi_player_update

# 同步
execute as @e[type=minecraft:marker,tag=invi_storage,tag=invi_sync] run function invi:storage/sync

# 编辑箱
execute as @e[type=minecraft:marker,tag=invi_edit_chest] at @s run function invi:edit/main

# 玩家
execute as @a at @s run function invi:player/main

# 编辑箱更新
execute as @e[type=minecraft:marker,tag=invi_storage,tag=invi_edit_update] run function invi:transfer/storage
tag @e remove invi_edit_update

# 销毁掉落背景
execute as @e[type=minecraft:hopper_minecart] run function invi:edit/background/clear/hopper_minecart
kill @e[type=minecraft:item,nbt={Item:{tag:{invibg:1b}}}]