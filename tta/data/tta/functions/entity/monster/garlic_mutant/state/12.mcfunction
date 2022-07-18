#-------------------------------------------------------------#
#
# Controls the Garlic Mutant.
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.temp2 matches 12 positioned ~ ~1 ~ as @e[type=wither_skeleton,tag=tta.render.garlic_mutant,sort=nearest,limit=1] run function tta:entity/monster/garlic_mutant/anim/7
execute unless score @s monkeyhue.temp2 matches 12 run scoreboard players reset @s monkeyhue.time3
execute unless score @s monkeyhue.temp2 matches 12 run scoreboard players reset @s monkeyhue.time4
execute unless score @s monkeyhue.temp2 matches 12 run scoreboard players set @s monkeyhue.temp2 12

execute facing entity @e[type=!#tta:inedible,tag=tta.temp.garlicTargeted,limit=1,sort=nearest] feet rotated ~ 0 run teleport @s ^ ^ ^0.7 ~ 0
execute rotated ~ 0 positioned ^ ^ ^2.5 if entity @e[distance=0..3,type=!#tta:inedible,type=!#tta:explosive,tag=!tta.entity.hitbox,tag=!smithed.strict] run scoreboard players set @s monkeyhue.entity.AIState 11
execute positioned ^ ^ ^3 unless block ~ ~0.25 ~ #tta:werewolf_passable positioned ~ ~0.25 ~ positioned ^ ^ ^-3 facing entity @e[type=!#tta:inedible,tag=tta.temp.garlicTargeted,limit=1,sort=nearest] feet rotated ~ 0 run teleport @s ^ ^ ^0.7 ~ 0
execute positioned ^ ^ ^3 unless block ~ ~1 ~ #tta:werewolf_passable positioned ~ ~1 ~ positioned ^ ^ ^-3 facing entity @e[type=!#tta:inedible,tag=tta.temp.garlicTargeted,limit=1,sort=nearest] feet rotated ~ 0 run teleport @s ^ ^ ^0.55 ~ 0
execute positioned ^ ^ ^3 unless block ~ ~1 ~ #tta:werewolf_passable positioned ~ ~1 ~ positioned ^ ^ ^-3 facing entity @e[type=!#tta:inedible,tag=tta.temp.garlicTargeted,limit=1,sort=nearest] feet rotated ~ 0 run teleport @s ^ ^ ^0.33 ~ 0
execute positioned ^ ^ ^3 if block ~ ~-0.25 ~ #tta:werewolf_passable if block ~ ~-0.1 ~ #tta:werewolf_passable positioned ~ ~-0.25 ~ positioned ^ ^ ^-3 if block ~ ~-0.1 ~ #tta:werewolf_passable facing entity @e[type=!#tta:inedible,tag=tta.temp.garlicTargeted,limit=1,sort=nearest] feet rotated ~ 0 run teleport @s ^ ^ ^0.7 ~ 0
execute positioned ^ ^ ^3 if block ~ ~-1 ~ #tta:werewolf_passable if block ~ ~-0.1 ~ #tta:werewolf_passable positioned ~ ~-1 ~ positioned ^ ^ ^-3 if block ~ ~-0.1 ~ #tta:werewolf_passable facing entity @e[type=!#tta:inedible,tag=tta.temp.garlicTargeted,limit=1,sort=nearest] feet rotated ~ 0 run teleport @s ^ ^ ^0.55 ~ 0

scoreboard players add @s monkeyhue.time3 1

execute if entity @e[type=marker,distance=1.5..8,tag=tta.entity.garlic_mutant] run scoreboard players set @s monkeyhue.entity.AIState 7

execute if score @s monkeyhue.time3 matches 33.. run scoreboard players set @s monkeyhue.entity.AIState 7

scoreboard players add @s monkeyhue.time4 1

execute if score @s monkeyhue.time4 matches 1 run playsound minecraft:block.big_dripleaf.step hostile @a ~ ~ ~ 2 0.5
execute if score @s monkeyhue.time4 matches 6 run playsound minecraft:block.big_dripleaf.step hostile @a ~ ~ ~ 2 0.5
execute if score @s monkeyhue.time4 matches 11 run playsound minecraft:block.big_dripleaf.step hostile @a ~ ~ ~ 2 0.5
execute if score @s monkeyhue.time4 matches 16 run playsound minecraft:block.big_dripleaf.step hostile @a ~ ~ ~ 2 0.5

execute if score @s monkeyhue.time4 matches 22.. run scoreboard players reset @s monkeyhue.time4