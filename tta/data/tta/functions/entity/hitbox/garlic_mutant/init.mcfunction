#-------------------------------------------------------------#
#
# Initializes the Garlic Mutant's hitboxes
#
#-------------------------------------------------------------#

execute store result score @s monkeyhue.temp9 run data get entity @e[type=marker,limit=1,sort=nearest,tag=!switch,tag=tta.entity.garlic_mutant,distance=0..16] UUID[0]
tag @s add switch