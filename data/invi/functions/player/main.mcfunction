# 分配存储
execute if entity @s[tag=!invi_has_storage] run function invi:storage/init
tag @a add invi_has_storage

# 销毁拾取的背景
function invi:edit/background/clear/player

# 编辑权限判定
function invi:player/key_check

# 新建编辑箱
execute if entity @s[scores={inviCreate=0..},tag=invi_has_key] run function invi:player/create
tellraw @s[scores={inviCreate=0..},tag=!invi_has_key] ["",{"storage":"invi:tellraw","nbt":"Name","interpret": true},{"storage":"invi:tellraw","nbt":"Error.NoPermission","interpret": true}]
scoreboard players enable @s inviCreate
scoreboard players set @s inviCreate -1