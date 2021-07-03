#define score_holder #findplayer 寻找编号对应玩家 pidList
#define score_holder version 版本
#define tag pid_selected

scoreboard objectives add pidList dummy
scoreboard objectives setdisplay list pidList

scoreboard objectives add pidSettings dummy
scoreboard players set #findplayer pidList 0
scoreboard players set version pidSettings 11701
tellraw @s ["[PID]已完成加载，版本号",{"score":{"objective": "pidSettings","name": "version"}},"。"]