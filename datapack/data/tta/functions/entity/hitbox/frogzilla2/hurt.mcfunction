#-------------------------------------------------------------#
#
# Controls hitboxes when they take damage
#
#-------------------------------------------------------------#

execute store result score @s monkeyhue.temp1 run attribute @s minecraft:generic.max_health get
execute store result score @s monkeyhue.temp2 run data get entity @s Health 1
scoreboard players operation @s monkeyhue.temp1 -= @s monkeyhue.temp2
execute if entity @s[tag=tta.entity.hitbox.frogzilla2.eye] run scoreboard players set @s monkeyhue.temp2 3
execute if entity @s[tag=tta.entity.hitbox.frogzilla2.eye] run scoreboard players operation @s monkeyhue.temp1 *= @s monkeyhue.temp2

execute unless entity @s[tag=tta.temp.suffocating] run scoreboard players operation @e[type=marker,tag=tta.entity.frogzilla2,limit=1,sort=nearest] monkeyhue.entity.customHealth -= @s monkeyhue.temp1

data merge entity @s {Health:1024f}
scoreboard players reset @s monkeyhue.temp1
scoreboard players reset @s monkeyhue.temp2