#-------------------------------------------------------------#
#
# Controls Frogzilla.
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.temp2 matches 16 positioned ~ ~12 ~ as @e[type=wither_skeleton,tag=tta.render.frogzilla,sort=nearest,limit=1] run function tta:entity/monster/frogzilla2/anim/14
execute unless score @s monkeyhue.temp2 matches 16 run scoreboard players reset @s monkeyhue.time3
execute unless score @s monkeyhue.temp2 matches 16 run scoreboard players reset @s monkeyhue.temp3
execute unless score @s monkeyhue.temp2 matches 16 run scoreboard players operation @s monkeyhue.entity.customHealth -= @s monkeyhue.temp9
execute unless score @s monkeyhue.temp2 matches 16 if score @s monkeyhue.entity.customHealth matches ..0 run scoreboard players set @s monkeyhue.entity.AIState 18
execute unless score @s monkeyhue.temp2 matches 16 run scoreboard players reset @s monkeyhue.temp9
execute unless score @s monkeyhue.temp2 matches 16 run tag @e[type=!#tta:inedible,tag=tta.temp.frogzillaTargeted] remove tta.temp.frogzillaTargeted
execute unless score @s monkeyhue.temp2 matches 16 run scoreboard players set @s monkeyhue.temp2 16

scoreboard players add @s monkeyhue.time3 1

execute if score @s monkeyhue.time3 matches 3 at @s positioned ~ ~22 ~ run particle explosion_emitter ^ ^ ^-2 0 0 0 0 1 force
execute if score @s monkeyhue.time3 matches 3 at @s positioned ~ ~22 ~ run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 6 1
execute if score @s monkeyhue.time3 matches 3 at @s positioned ~ ~22 ~ run playsound minecraft:tta.entity.frogzilla.roar_short hostile @a ~ ~ ~ 6 1
execute if score @s monkeyhue.time3 matches 3 positioned ~ ~12 ~ as @e[type=wither_skeleton,tag=tta.render.frogzilla,sort=nearest,limit=1] run function tta:entity/monster/frogzilla2/anim/14_hurt

execute if score @s monkeyhue.time3 matches 13 positioned ~ ~12 ~ as @e[type=wither_skeleton,tag=tta.render.frogzilla,sort=nearest,limit=1] run function tta:entity/monster/frogzilla2/anim/14_hurt

execute if score @s monkeyhue.time3 matches 56 at @s positioned ~ ~20 ~ run playsound minecraft:tta.entity.frogzilla.roar_short hostile @a ~ ~ ~ 6 1
execute if score @s monkeyhue.time3 matches 61 at @s run playsound minecraft:block.wet_grass.step hostile @a ~ ~ ~ 8 0.7
execute if score @s monkeyhue.time3 matches 61 at @s run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 8 0.5
execute if score @s monkeyhue.time3 matches 69 at @s run playsound minecraft:block.wet_grass.step hostile @a ~ ~ ~ 8 0.7
execute if score @s monkeyhue.time3 matches 69 at @s run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 8 0.5
execute if score @s monkeyhue.time3 matches 74 at @s run playsound minecraft:block.wet_grass.step hostile @a ~ ~ ~ 8 0.7
execute if score @s monkeyhue.time3 matches 74 at @s run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 8 0.5

execute if score @s monkeyhue.time3 matches 99 run tag @a[tag=tta.temp.frogzillaTargeted] remove tta.temp.frogzillaTargeted
execute if score @s monkeyhue.time3 matches 99 as @a[distance=12..190,sort=nearest,limit=5,gamemode=!creative,gamemode=!spectator] run function tta:entity/monster/frogzilla2/event/target
execute if score @s monkeyhue.time3 matches 99 run scoreboard players set @s monkeyhue.time6 201
execute if score @s monkeyhue.time3 matches 100.. unless score @s monkeyhue.temp3 matches 1.. run scoreboard players set @s monkeyhue.entity.AIState 0
execute if score @s monkeyhue.time3 matches 100.. if score @s monkeyhue.temp3 matches 1.. run scoreboard players set @s monkeyhue.entity.AIState 11
execute if score @s monkeyhue.time3 matches 100.. run scoreboard players reset @s monkeyhue.time3


