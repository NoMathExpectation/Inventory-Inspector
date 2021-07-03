execute unless score #current pidSettings matches 1.. run scoreboard players set #current pidSettings 0

execute as @a[tag=!pid_registered] run function pid:register