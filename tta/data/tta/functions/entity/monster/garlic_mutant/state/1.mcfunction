#-------------------------------------------------------------#
#
# Controls the Garlic Mutant.
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.temp2 matches 1 positioned ~ ~1 ~ as @e[type=wither_skeleton,tag=tta.render.garlic_mutant,sort=nearest,limit=1] run function tta:entity/monster/garlic_mutant/anim/1
execute unless score @s monkeyhue.temp2 matches 1 run scoreboard players reset @s monkeyhue.time3
execute unless score @s monkeyhue.temp2 matches 1 run scoreboard players set @s monkeyhue.temp2 1

scoreboard players add @s monkeyhue.time3 1

execute if score @s monkeyhue.time3 matches 8 run function tta:entity/monster/garlic_mutant/event/snore

execute if score @s monkeyhue.time3 matches 26 run playsound minecraft:block.big_dripleaf.tilt_up hostile @a ~ ~ ~ 1 1
execute if score @s monkeyhue.time3 matches 29 run playsound minecraft:block.big_dripleaf.tilt_up hostile @a ~ ~ ~ 1 1
execute if score @s monkeyhue.time3 matches 32 run playsound minecraft:block.big_dripleaf.tilt_up hostile @a ~ ~ ~ 1 1
execute if score @s monkeyhue.time3 matches 35 run playsound minecraft:block.big_dripleaf.tilt_up hostile @a ~ ~ ~ 1 1

execute if score @s monkeyhue.time3 matches 41.. run scoreboard players set @s monkeyhue.entity.AIState 2
