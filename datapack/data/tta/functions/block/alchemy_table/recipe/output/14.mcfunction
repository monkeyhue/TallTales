data modify storage tta:block alchemy_table.Items set from block ~ ~ ~ Items
item modify block ~ ~ ~ container.1 tta:deplete
item modify block ~ ~ ~ container.3 tta:deplete
item modify block ~ ~ ~ container.10 tta:deplete
item modify block ~ ~ ~ container.19 tta:deplete
execute if data block ~ ~ ~ Items.[{Slot:16b}] run item modify block ~ ~ ~ container.16 tta:increment 
execute unless data block ~ ~ ~ Items.[{Slot:16b}] run loot replace block ~ ~ ~ container.16 loot tta:item/pressed_garlic
function tta:block/alchemy_table/recipe/reset