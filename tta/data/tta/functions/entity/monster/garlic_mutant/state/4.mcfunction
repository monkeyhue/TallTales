#-------------------------------------------------------------#
#
# Controls the Garlic Mutant.
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.temp2 matches 4 positioned ~ ~1 ~ as @e[type=wither_skeleton,tag=tta.render.garlic_mutant,sort=nearest,limit=1] run function tta:entity/monster/garlic_mutant/anim/4
execute unless score @s monkeyhue.temp2 matches 4 run scoreboard players reset @s monkeyhue.time3
execute unless score @s monkeyhue.temp2 matches 4 run scoreboard players reset @s monkeyhue.time4
execute unless score @s monkeyhue.temp2 matches 4 run scoreboard players set @s monkeyhue.temp2 4

scoreboard players add @s monkeyhue.time3 1

execute if score @s monkeyhue.time3 matches 11 run playsound minecraft:block.big_dripleaf.tilt_down hostile @a ~ ~ ~ 2 0.5
execute if score @s monkeyhue.time3 matches 27 run playsound minecraft:block.big_dripleaf.tilt_up hostile @a ~ ~ ~ 2 1
execute if score @s monkeyhue.time3 matches 30 run playsound minecraft:block.big_dripleaf.tilt_up hostile @a ~ ~ ~ 2 1

execute if score @s monkeyhue.time3 matches 32.. run scoreboard players set @s monkeyhue.entity.AIState 3
