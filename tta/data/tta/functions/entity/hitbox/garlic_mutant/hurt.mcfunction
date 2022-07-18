#-------------------------------------------------------------#
#
# Controls hitboxes when they take damage
#
#-------------------------------------------------------------#

execute store result score @s monkeyhue.temp1 run attribute @s minecraft:generic.max_health get
execute store result score @s monkeyhue.temp2 run data get entity @s Health 1
scoreboard players operation @s monkeyhue.temp1 -= @s monkeyhue.temp2
execute if entity @s[tag=tta.entity.hitbox.garlic_mutant.eye] run scoreboard players set @s monkeyhue.temp2 2
execute if entity @s[tag=tta.entity.hitbox.garlic_mutant.eye] run scoreboard players operation @s monkeyhue.temp1 *= @s monkeyhue.temp2

execute unless entity @s[tag=tta.temp.suffocating] run scoreboard players operation @e[type=marker,tag=tta.entity.garlic_mutant,limit=1,sort=nearest] monkeyhue.entity.customHealth -= @s monkeyhue.temp1

execute if score @e[type=marker,tag=tta.entity.garlic_mutant,limit=1,sort=nearest] monkeyhue.entity.AIState matches 2 run scoreboard players set @e[type=marker,tag=tta.entity.garlic_mutant,limit=1,sort=nearest] monkeyhue.entity.AIState 4

execute as @e[type=marker,tag=tta.entity.garlic_mutant,limit=1,sort=nearest] if score @s monkeyhue.entity.AIState matches 7 at @s facing entity @p feet run teleport @s ~ ~ ~ ~ ~ 

data merge entity @s {Health:1000f}
scoreboard players reset @s monkeyhue.temp1
scoreboard players reset @s monkeyhue.temp2