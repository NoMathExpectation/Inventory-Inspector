#删除
execute unless block ~ ~ ~ minecraft:chest run function invi:edit/delete
execute unless entity @a[nbt={Inventory:[{tag:{inviEditKey:1b}}]},distance=..10] run function invi:edit/delete
execute if block ~ ~ ~ minecraft:chest[type=single] run function invi:edit/delete

#异物插入检查
execute if entity @s[tag=invi_edit_chest_lower] run function invi:edit/background/check

#背景拾取检查
execute if entity @s[tag=invi_edit_chest_lower] unless data block ~ ~ ~ Items[{Slot:26b}].tag.invibg run function invi:edit/toggle

#生成背景
execute if entity @s[tag=invi_edit_chest_lower] run function invi:edit/background/generate

# 更改检查
function invi:edit/change