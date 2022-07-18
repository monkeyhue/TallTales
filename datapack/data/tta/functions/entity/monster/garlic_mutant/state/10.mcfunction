#-------------------------------------------------------------#
#
# Controls the Garlic Mutant.
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.temp2 matches 10 positioned ~ ~1 ~ as @e[type=wither_skeleton,tag=tta.render.garlic_mutant,sort=nearest,limit=1] run function tta:entity/monster/garlic_mutant/anim/10
execute unless score @s monkeyhue.temp2 matches 10 run scoreboard players reset @s monkeyhue.time3
execute unless score @s monkeyhue.temp2 matches 10 run scoreboard players set @s monkeyhue.temp2 10

scoreboard players add @s monkeyhue.time3 1

execute if score @s monkeyhue.time3 matches 1 run tag @a add tta.temp.garlicTargeted
execute if score @s monkeyhue.time3 matches 2..38 run function tta:entity/monster/garlic_mutant/event/target

execute if score @s monkeyhue.time3 matches 1 run playsound minecraft:entity.ravager.hurt hostile @a ~ ~ ~ 4 0.5
execute if score @s monkeyhue.time3 matches 13 run playsound minecraft:block.big_dripleaf.step hostile @a ~ ~ ~ 4 0.5
execute if score @s monkeyhue.time3 matches 16 run playsound minecraft:block.big_dripleaf.step hostile @a ~ ~ ~ 4 0.5
execute if score @s monkeyhue.time3 matches 19 run playsound minecraft:block.big_dripleaf.step hostile @a ~ ~ ~ 4 0.5
execute if score @s monkeyhue.time3 matches 22 run playsound minecraft:block.big_dripleaf.step hostile @a ~ ~ ~ 4 0.5

execute if score @s monkeyhue.time3 matches 37 run scoreboard players reset @s monkeyhue.temp4
execute if score @s monkeyhue.time3 matches 37.. run scoreboard players set @s monkeyhue.entity.AIState 12