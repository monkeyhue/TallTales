scoreboard players add @s monkeyhue.temp1 1
data remove storage tta:block alchemy_table.Input[0]

#Pressed Garlic
execute if score @s monkeyhue.temp1 matches 3 if data block ~ ~ ~ Items.[{Slot:3b,tag:{tta:{item:{id:12}}}}] unless data block ~ ~ ~ Items.[{Slot:16b}] run scoreboard players set @s monkeyhue.block.var1 14
execute if score @s monkeyhue.temp1 matches 3 if data block ~ ~ ~ Items.[{Slot:3b,tag:{tta:{item:{id:12}}}}] if data block ~ ~ ~ Items.[{Slot:16b,tag:{tta:{item:{id:14}}}}] run scoreboard players set @s monkeyhue.block.var1 14

#Recursion
execute unless data storage tta:block alchemy_table.Input[0] run scoreboard players reset @s monkeyhue.temp1
execute if data storage tta:block alchemy_table.Input[0] run function tta:block/alchemy_table/recipe/recipes/garlic