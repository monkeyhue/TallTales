scoreboard players add @s monkeyhue.block.var5 1

execute store result score @s monkeyhue.temp2 run data get block ~ ~ ~ Items.[{Slot:8b}].tag.CustomModelData
scoreboard players add @s monkeyhue.temp2 1
execute store result block ~ ~ ~ Item.[{Slot:8b}].tag.CustomModelData int 1 run scoreboard players get @s monkeyhue.temp2

execute if score @s monkeyhue.block.var5 matches 20.. run function tta:block/alchemy_table/recipe/output
