#-------------------------------------------------------------#
#
# Controls the Garlic Mutant.
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.temp2 matches 0 positioned ~ ~1 ~ as @e[type=wither_skeleton,tag=tta.render.garlic_mutant,sort=nearest,limit=1] run function tta:entity/monster/garlic_mutant/anim/0
execute unless score @s monkeyhue.temp2 matches 0 run scoreboard players reset @s monkeyhue.time3
execute unless score @s monkeyhue.temp2 matches 0 run scoreboard players set @s monkeyhue.temp2 0

scoreboard players add @s monkeyhue.time3 1

execute if score @s monkeyhue.time3 matches 8 run function tta:entity/monster/garlic_mutant/event/snore

execute if score @s monkeyhue.time3 matches 60.. run scoreboard players reset @s monkeyhue.time3

execute unless score @s monkeyhue.entity.customHealth matches 199.. run scoreboard players set @s monkeyhue.entity.AIState 1

execute if entity @p[distance=..6] run scoreboard players set @s monkeyhue.entity.AIState 1