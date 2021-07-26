execute unless data block ~ ~ ~ Items[{Slot:0b}].tag.invibg run data modify block 0 1 0 Items append from block ~ ~ ~ Items[{Slot:0b}]
execute unless data block ~ ~ ~ Items[{Slot:1b}].tag.invibg run data modify block 0 1 0 Items append from block ~ ~ ~ Items[{Slot:1b}]
execute unless data block ~ ~ ~ Items[{Slot:2b}].tag.invibg run data modify block 0 1 0 Items append from block ~ ~ ~ Items[{Slot:2b}]
execute unless data block ~ ~ ~ Items[{Slot:3b}].tag.invibg run data modify block 0 1 0 Items append from block ~ ~ ~ Items[{Slot:3b}]
execute unless data block ~ ~ ~ Items[{Slot:4b}].tag.invibg run data modify block 0 1 0 Items append from block ~ ~ ~ Items[{Slot:4b}]
execute unless data block ~ ~ ~ Items[{Slot:5b}].tag.invibg run data modify block 0 1 0 Items append from block ~ ~ ~ Items[{Slot:5b}]
execute unless data block ~ ~ ~ Items[{Slot:6b}].tag.invibg run data modify block 0 1 0 Items append from block ~ ~ ~ Items[{Slot:6b}]
execute unless data block ~ ~ ~ Items[{Slot:7b}].tag.invibg run data modify block 0 1 0 Items append from block ~ ~ ~ Items[{Slot:7b}]
execute unless data block ~ ~ ~ Items[{Slot:8b}].tag.invibg run data modify block 0 1 0 Items append from block ~ ~ ~ Items[{Slot:8b}]
execute unless data block ~ ~ ~ Items[{Slot:22b}].tag.invibg run data modify block 0 1 0 Items append from block ~ ~ ~ Items[{Slot:22b}]
execute unless data block ~ ~ ~ Items[{Slot:24b}].tag.invibg run data modify block 0 1 0 Items append from block ~ ~ ~ Items[{Slot:24b}]
execute unless data block ~ ~ ~ Items[{Slot:25b}].tag.invibg run data modify block 0 1 0 Items append from block ~ ~ ~ Items[{Slot:25b}]
execute unless data block ~ ~ ~ Items[{Slot:26b}].tag.invibg run data modify block 0 1 0 Items append from block ~ ~ ~ Items[{Slot:26b}]

loot spawn ~ ~ ~ mine 0 1 0 minecraft:wooden_axe{inviContent:1b}
function invi:transfer/clear