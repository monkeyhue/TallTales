# Swaps between hurtstate and regular state
execute store result score @s monkeyhue.temp1 run data get entity @s ArmorItems[3].tag.CustomModelData
execute if score @s monkeyhue.temp1 matches 6532012 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6532015
execute if score @s monkeyhue.temp1 matches 6532015 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6532012
scoreboard players reset @s monkeyhue.temp1