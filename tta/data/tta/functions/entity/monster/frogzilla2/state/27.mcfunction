#-------------------------------------------------------------#
#
# Controls Frogzilla.
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.temp2 matches 27 positioned ~ ~12 ~ as @e[type=wither_skeleton,tag=tta.render.frogzilla,sort=nearest,limit=1] run function tta:entity/monster/frogzilla2/anim/27
execute unless score @s monkeyhue.temp2 matches 27 run scoreboard players reset @s monkeyhue.time3
execute unless score @s monkeyhue.temp2 matches 27 run scoreboard players reset @s monkeyhue.time4
execute unless score @s monkeyhue.temp2 matches 27 run scoreboard players set @s monkeyhue.temp2 27

scoreboard players add @s monkeyhue.time3 1

execute if score @s monkeyhue.time3 matches 80.. unless score @s monkeyhue.temp9 matches 1.. run scoreboard players set @s monkeyhue.entity.AIState 11