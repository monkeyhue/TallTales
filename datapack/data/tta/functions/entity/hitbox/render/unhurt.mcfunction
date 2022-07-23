execute store result score @s monkeyhue.temp9 run data get entity @s ArmorItems[3].tag.CustomModelData
execute unless score @s monkeyhue.temp9 matches ..6532499 run scoreboard players remove @s monkeyhue.temp9 500

execute store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get @s monkeyhue.temp9

scoreboard players reset @s monkeyhue.time9
scoreboard players reset @s monkeyhue.temp9