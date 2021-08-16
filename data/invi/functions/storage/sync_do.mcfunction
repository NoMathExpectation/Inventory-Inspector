function invi:storage/push/upper
execute as @a[tag=pid_selected] run function invi:player/pull/upper
function invi:transfer/clear

function invi:storage/push/ender
execute as @a[tag=pid_selected] run function invi:player/pull/ender
function invi:transfer/clear

function invi:storage/push/lower
execute as @a[tag=pid_selected] run function invi:player/pull/lower
function invi:transfer/clear

tag @s remove invi_sync