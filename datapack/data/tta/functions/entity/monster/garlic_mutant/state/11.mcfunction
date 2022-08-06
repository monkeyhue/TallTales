#-------------------------------------------------------------#
#
# Controls the Garlic Mutant.
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.temp2 matches 11 positioned ~ ~1 ~ as @e[type=wither_skeleton,tag=tta.render.garlic_mutant,sort=nearest,limit=1] run function tta:entity/monster/garlic_mutant/anim/11
execute unless score @s monkeyhue.temp2 matches 11 run scoreboard players reset @s monkeyhue.time5
execute unless score @s monkeyhue.temp2 matches 11 run scoreboard players set @s monkeyhue.temp2 11

scoreboard players add @s monkeyhue.time5 1

execute if score @s monkeyhue.time5 matches 2 run playsound minecraft:entity.evoker_fangs.attack hostile @a ~ ~ ~ 2 1
execute if score @s monkeyhue.time5 matches 10 positioned ^ ^ ^3.5 as @e[type=!#tta:inedible,distance=0..3.5,tag=!tta.entity.hitbox,tag=!tta.ignore,nbt=!{Invulnerable:1b},limit=5,sort=nearest] at @s run function tta:entity/monster/garlic_mutant/event/eat
execute if score @s monkeyhue.time5 matches 11 run tag @e[type=!#tta:inedible,tag=tta.temp.garlicTargeted,limit=20] remove tta.temp.garlicTargeted

execute if score @s monkeyhue.time5 matches 21 facing entity @e[type=!#tta:inedible,limit=1,sort=nearest,tag=!smithed.strict] feet run teleport @s ~ ~ ~ ~ 0

execute if score @s monkeyhue.time5 matches 21.. run scoreboard players set @s monkeyhue.entity.AIState 7