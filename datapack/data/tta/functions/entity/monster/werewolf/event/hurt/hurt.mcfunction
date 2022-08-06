#-------------------------------------------------------------#
#
# Controls hitboxes when they take damage
#
#-------------------------------------------------------------#

execute store result score @s monkeyhue.temp1 run attribute @s minecraft:generic.max_health get
execute store result score @s monkeyhue.temp3 run data get entity @s Health 1
scoreboard players operation @s monkeyhue.temp1 -= @s monkeyhue.temp3

scoreboard players operation @s monkeyhue.entity.customHealth -= @s monkeyhue.temp1

execute facing entity @p eyes run teleport @s ~ ~ ~ ~180 0

data merge entity @s {Health:1000f}
scoreboard players reset @s monkeyhue.temp1
scoreboard players reset @s monkeyhue.temp3