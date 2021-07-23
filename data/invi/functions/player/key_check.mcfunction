#define score_holder #haskey 持有钥匙
#define tag invi_has_key

execute store success score #haskey inviCreate run clear @s minecraft:warped_fungus_on_a_stick{inviEditKey:1b} 0
execute if score #haskey inviCreate matches 1 run tag @s add invi_has_key
execute if score #haskey inviCreate matches 0 run tag @s remove invi_has_key
execute unless score #haskey inviCreate matches 0..1 run tellraw @s ["",{"storage":"invi:tellraw","nbt":"Name","interpret": true},{"storage":"invi:tellraw","nbt":"Error.IllegalArgument","interpret": true},{"text": "haskey","color": "red"}]