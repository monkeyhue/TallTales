#-------------------------------------------------------------#
#
# Controls the Garlic Mutant.
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.temp2 matches 2 positioned ~ ~1 ~ as @e[type=wither_skeleton,tag=tta.render.garlic_mutant,sort=nearest,limit=1] run function tta:entity/monster/garlic_mutant/anim/2
execute unless score @s monkeyhue.temp2 matches 2 run scoreboard players reset @s monkeyhue.time3
execute unless score @s monkeyhue.temp2 matches 2 run scoreboard players set @s monkeyhue.temp2 2

execute if entity @p[distance=0..24,gamemode=!creative,gamemode=!spectator] facing entity @p feet run teleport @s ~ ~ ~ ~ ~
execute if entity @p[distance=0..12,gamemode=!creative,gamemode=!spectator] run scoreboard players set @s monkeyhue.entity.AIState 4

scoreboard players add @s monkeyhue.time3 1

execute if score @s monkeyhue.time3 matches 100.. run scoreboard players reset @s monkeyhue.time3

scoreboard players add @s monkeyhue.time4 1

execute if score @s monkeyhue.time4 matches 600.. if score @s monkeyhue.entity.customHealth matches 596.. run scoreboard players set @s monkeyhue.entity.AIState 20
