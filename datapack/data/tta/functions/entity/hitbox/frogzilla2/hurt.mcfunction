#-------------------------------------------------------------#
#
# Controls hitboxes when they take damage
#
#-------------------------------------------------------------#

execute store result score @s monkeyhue.temp1 run attribute @s minecraft:generic.max_health get
execute store result score @s monkeyhue.temp2 run data get entity @s Health 1
scoreboard players operation @s monkeyhue.temp1 -= @s monkeyhue.temp2
scoreboard players set @s monkeyhue.temp2 1
execute if entity @s[tag=tta.entity.hitbox.frogzilla2.eye] run scoreboard players set @s monkeyhue.temp2 2
execute if score @e[type=marker,tag=tta.entity.frogzilla2,limit=1,sort=nearest] monkeyhue.entity.AIState matches 22..23 run scoreboard players set @s monkeyhue.temp2 3
scoreboard players operation @s monkeyhue.temp1 *= @s monkeyhue.temp2

scoreboard players operation @e[type=marker,tag=tta.entity.frogzilla2,limit=1,sort=nearest] monkeyhue.entity.customHealth -= @s monkeyhue.temp1

execute if score @s monkeyhue.temp1 > %4 monkeyhue.temp1 as @e[type=wither_skeleton,distance=..32,tag=tta.render.frogzilla,sort=nearest,limit=1] unless score @e[type=marker,tag=tta.entity.frogzilla2,limit=1,sort=nearest] monkeyhue.entity.AIState matches 16..20 unless score @s monkeyhue.time9 matches 1.. run function tta:entity/hitbox/render/hurt
data merge entity @s {Health:1000f}
scoreboard players reset @s monkeyhue.temp1
scoreboard players reset @s monkeyhue.temp2