#define score_holder #haskey 持有钥匙
#define tag invi_has_key

execute store success score #haskey inviCreate run clear @s minecraft:warped_fungus_on_a_stick{display:{Name:'{"text":"§d§k§d编辑用钥匙§d§k"}'},inviEditKey:1b} 0
execute if score #haskey inviCreate matches 1 run tag @s add invi_has_key
execute if score #haskey inviCreate matches 0 run tag @s remove invi_has_key
execute unless score #haskey inviCreate matches 0..1 run tellraw @s [{"text": "","interpret": true},{"storage":"invi:tellraw","nbt":"Name"},{"storage":"invi:tellraw","nbt":"Error.IllegalArgument"},{"text": "haskey","color": "red"}]