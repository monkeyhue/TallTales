data modify storage tta:block alchemy_table.Input append from block ~ ~ ~ Items.[{Slot:1b}]
data modify storage tta:block alchemy_table.Input append from block ~ ~ ~ Items.[{Slot:10b}]
data modify storage tta:block alchemy_table.Input append from block ~ ~ ~ Items.[{Slot:19b}]
execute if data storage tta:block alchemy_table.Input.[{tag:{tta:{item:{id:1}}}}] run function tta:block/alchemy_table/recipe/recipes/garlic

execute if score @s monkeyhue.block.var1 matches -1.. run function tta:block/alchemy_table/recipe/craft

data remove storage tta:block alchemy_table.Input