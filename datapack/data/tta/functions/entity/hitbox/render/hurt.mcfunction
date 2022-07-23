execute store result score @s monkeyhue.temp9 run data get entity @s ArmorItems[3].tag.CustomModelData
execute unless score @s monkeyhue.time9 matches 1.. unless score @s monkeyhue.temp9 matches 6532500.. run scoreboard players add @s monkeyhue.temp9 500

execute store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get @s monkeyhue.temp9

#Sounds
execute if entity @s[tag=tta.render.frogzilla] run playsound minecraft:block.wet_grass.place hostile @a ~ ~ ~ 8 0.8

scoreboard players set @s monkeyhue.time9 10
scoreboard players reset @s monkeyhue.temp9