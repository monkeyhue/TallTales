#-------------------------------------------------------------#
#
# Controls Frogzilla.
#
#-------------------------------------------------------------#

execute unless score @s monkeyhue.entity.customHealth matches 200 run scoreboard players add @s monkeyhue.entity.customHealth 1
execute if score @s monkeyhue.entity.customHealth matches 201.. run scoreboard players set @s monkeyhue.entity.customHealth 200