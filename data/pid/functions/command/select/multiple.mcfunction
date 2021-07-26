execute store result score #findplayer pidList run data get storage pid:input Args[0]
data remove storage pid:input Args[0]
function pid:command/select/single
execute if data storage pid:input Args[0] run function pid:command/select/multiple