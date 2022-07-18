#-------------------------------------------------------------#
#
# Controls the Garlic Mutant.
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.temp2 matches 20 positioned ~ ~1 ~ as @e[type=wither_skeleton,tag=tta.render.garlic_mutant,sort=nearest,limit=1] run function tta:entity/monster/garlic_mutant/anim/20
execute unless score @s monkeyhue.temp2 matches 20 run scoreboard players reset @s monkeyhue.time3
execute unless score @s monkeyhue.temp2 matches 20 run scoreboard players reset @s monkeyhue.time4
execute unless score @s monkeyhue.temp2 matches 20 run scoreboard players set @s monkeyhue.temp2 20

scoreboard players add @s monkeyhue.time3 1

execute if score @s monkeyhue.time3 matches 2 run function tta:entity/monster/garlic_mutant/event/snore

execute if score @s monkeyhue.time3 matches 38.. run scoreboard players set @s monkeyhue.entity.AIState 0
