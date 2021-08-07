#define score_holder #findplayer 寻找编号对应玩家 pidList
#define score_holder version 版本
#define tag pid_selected
#define score_holder #loadcomplete 加载完毕
#define score_holder entropy 函数熵

scoreboard objectives add pidList dummy
scoreboard objectives setdisplay list pidList

scoreboard objectives add pidSettings dummy
scoreboard players set #findplayer pidList 0
scoreboard players set version pidSettings 11701
scoreboard players set #loadcomplete pidSettings 1
tellraw @s ["[PID]已完成加载，版本号",{"score":{"objective": "pidSettings","name": "version"}},"。"]