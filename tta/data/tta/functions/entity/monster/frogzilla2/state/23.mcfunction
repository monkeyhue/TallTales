#-------------------------------------------------------------#
#
# Controls Frogzilla.
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.temp2 matches 23 positioned ~ ~12 ~ as @e[type=wither_skeleton,tag=tta.render.frogzilla,sort=nearest,limit=1] run function tta:entity/monster/frogzilla2/anim/23
execute unless score @s monkeyhue.temp2 matches 23 run scoreboard players reset @s monkeyhue.time3
execute unless score @s monkeyhue.temp2 matches 23 run scoreboard players reset @s monkeyhue.time4
execute unless score @s monkeyhue.temp2 matches 23 run scoreboard players set @s monkeyhue.temp2 23

scoreboard players add @s monkeyhue.time3 1

execute if score @s monkeyhue.time3 matches 53 run playsound minecraft:block.wet_grass.step hostile @a ~ ~ ~ 8 0.7
execute if score @s monkeyhue.time3 matches 53 run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 8 0.5
execute if score @s monkeyhue.time3 matches 59 run playsound minecraft:block.wet_grass.step hostile @a ~ ~ ~ 8 0.7
execute if score @s monkeyhue.time3 matches 59 run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 8 0.5

execute if score @s monkeyhue.time3 matches 59.. run scoreboard players set @s monkeyhue.entity.AIState 0

