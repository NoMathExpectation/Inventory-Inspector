# 分配存储
execute if entity @s[tag=!invi_has_storage] run function invi:storage/init

# 主手选择判定
execute store result score #return inviLastSelected run data get entity @s SelectedItemSlot
execute unless score #return inviLastSelected = @s inviLastSelected run advancement grant @s only invi:player/inventory_check
scoreboard players operation @s inviLastSelected = #return inviLastSelected
scoreboard players reset #return inviLastSelected

# 销毁拾取的背景
function invi:edit/background/clear/player

# 编辑权限判定
function invi:player/key_check

# 新建编辑箱
execute if entity @s[scores={inviCreate=0..},tag=invi_has_key] run function invi:player/create
tellraw @s[scores={inviCreate=0..},tag=!invi_has_key] [{"text": "","interpret": true},{"storage":"invi:tellraw","nbt":"Name"},{"storage":"invi:tellraw","nbt":"Error.NoPermission"}]
scoreboard players set @s inviCreate -1