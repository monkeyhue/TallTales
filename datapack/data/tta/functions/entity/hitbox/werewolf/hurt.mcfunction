#-------------------------------------------------------------#
#
# Controls hitboxes when they take damage
#
#-------------------------------------------------------------#

execute store result score @s monkeyhue.temp1 run attribute @s minecraft:generic.max_health get
execute store result score @s monkeyhue.temp3 run data get entity @s Health 1
scoreboard players operation @s monkeyhue.temp1 -= @s monkeyhue.temp3

scoreboard players operation @e[type=marker,tag=tta.entity.werewolf,limit=1,sort=nearest] monkeyhue.entity.customHealth -= @s monkeyhue.temp1

execute as @e[type=wither_skeleton,distance=..32,tag=tta.render.werewolf,sort=nearest,limit=1] unless score @s monkeyhue.time9 matches 1.. run function tta:entity/hitbox/render/hurt

data merge entity @s {Health:1000f}
scoreboard players reset @s monkeyhue.temp1
scoreboard players reset @s monkeyhue.temp3