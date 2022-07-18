#-------------------------------------------------------------#
#
# Controls the Garlic Mutant.
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.temp2 matches 3 positioned ~ ~1 ~ as @e[type=wither_skeleton,tag=tta.render.garlic_mutant,sort=nearest,limit=1] run function tta:entity/monster/garlic_mutant/anim/3
execute unless score @s monkeyhue.temp2 matches 3 run scoreboard players reset @s monkeyhue.time3
execute unless score @s monkeyhue.temp2 matches 3 run scoreboard players set @s monkeyhue.temp2 3

scoreboard players add @s monkeyhue.time3 1

execute if score @s monkeyhue.time3 matches 4 run function tta:entity/monster/garlic_mutant/event/detect_radius
execute if score @s monkeyhue.time3 matches 54 run function tta:entity/monster/garlic_mutant/event/detect_radius
execute if score @s monkeyhue.time3 matches 104 run function tta:entity/monster/garlic_mutant/event/detect_radius
execute if score @s monkeyhue.time3 matches 204 run function tta:entity/monster/garlic_mutant/event/detect_radius
execute if score @s monkeyhue.time3 matches 304 run function tta:entity/monster/garlic_mutant/event/detect_radius

execute if score @s monkeyhue.time3 matches 400.. run scoreboard players set @s monkeyhue.entity.AIState 5
