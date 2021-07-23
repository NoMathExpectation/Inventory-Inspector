# DHP申明
## 中转箱
#alias vector inviTransferChestLoaction 0 1 0

## 编辑
#define tag invi_edit_chest_upper 编辑箱上半部分
#define tag invi_edit_chest_lower 编辑箱下半部分
#define tag invi_edit_chest_ender 编辑箱末影部分
#define tag invi_edit_chest 编辑箱

#define tag invi_edit_init 编辑箱初始化

#define score_holder #findchest 寻找编号对应箱子
#define score_holder #selected 选择的栏位

##存储
#define tag invi_has_storage 有储存的玩家
#define tag invi_storage_init 存储初始化
#define tag invi_storage 存储
#define tag invi_storage_found 找到的存储

#define score_holder #findstorage 寻找存储

##创建
#define score_holder #create 创建
#define score_holder #return 返回值
#define score_holder #rotation 旋转角，0为SW，1为WS，2为WN，3为NW，4为NE，5为EN，6为ES，7为SE
#define score_holder #const45 45
#define score_holder #const8 8

##文字
#define storage invi:tellraw 预制文字

## 同步
#define tag invi_sync
#define tag invi_edit_update

# JSON文本
data merge storage invi:tellraw {Name:'[{"text": "["},{"text": "invi","color": "#5be1e1"},{"text": "]"}]'}
data merge storage invi:tellraw {Error:{IllegalArgument:'[{"text": "非法变量:","color": "red"}]'}}
data merge storage invi:tellraw {Error:{NotFound:'[{"text": "未找到","color": "red"}]'}}
data merge storage invi:tellraw {Error:{pidVersion:'[{"text":"pid版本不符，请检查是否是最新版本。","color":"red"}]'}}
data merge storage invi:tellraw {Error:{NoPermission:'[{"text": "你没有权限这么做。","color": "red"}]'}}
data merge storage invi:tellraw {Item:{EditKey:"§d§k§d编辑用钥匙§d§k"}}

# 检查中转区
fill -1 0 -1 1 2 1 minecraft:bedrock
function invi:transfer/check

# 计分板
## 编辑箱对应玩家表
scoreboard objectives add inviEditChest dummy " "
scoreboard players set #findchest inviEditChest 0
scoreboard players set #selected inviEditChest -1

## 存储对应玩家表
forceload add 0 0
scoreboard objectives add inviStorage dummy " "
scoreboard players set #findchest inviEditChest 0

## 创建申请
scoreboard objectives add inviCreate trigger {"text": "创建编辑箱","color": "cyan"}
scoreboard players set #const45 inviCreate 45
scoreboard players set #const8 inviCreate 8

## 上一刻选择物品
scoreboard objectives add inviLastSelected dummy " "

# pid版本检查
execute unless score version pidSettings matches 11701 run tellraw @s ["",{"storage":"invi:tellraw","nbt":"Name","interpret": true},{"storage":"invi:tellraw","nbt":"Error.pidVersion","interpret": true}]