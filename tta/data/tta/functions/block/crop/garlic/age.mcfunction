execute store result score @s monkeyhue.block.var2 run time query daytime
execute unless score @s monkeyhue.block.var2 matches 12999..23000 run function tta:block/crop/garlic/age_day
execute if score @s monkeyhue.block.var2 matches 12999..23000 run function tta:block/crop/garlic/age_night

execute if score @s monkeyhue.block.var1 matches 2 run data modify entity @s Item.tag.CustomModelData set value 6532002
execute if score @s monkeyhue.block.var1 matches 3 run data modify entity @s Item.tag.CustomModelData set value 6532003
execute if score @s monkeyhue.block.var1 matches 4 run data modify entity @s Item.tag.CustomModelData set value 6532004
execute if score @s monkeyhue.block.var1 matches 5.. run data modify entity @s Item.tag.CustomModelData set value 6532005
execute if score @s monkeyhue.block.var1 matches 5.. run scoreboard players set @s monkeyhue.block.var1 5
setblock ~ ~ ~ wheat[age=0]

scoreboard players reset @s monkeyhue.block.var2
