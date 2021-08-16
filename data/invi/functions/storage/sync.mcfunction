scoreboard players operation #findplayer pidList = @s inviStorage
function pid:command/select/single

execute if entity @e[tag=pid_selected] run function invi:storage/sync_do

function pid:command/deselect/all