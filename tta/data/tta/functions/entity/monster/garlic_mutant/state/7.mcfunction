#-------------------------------------------------------------#
#
# Controls the Garlic Mutant.
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.temp2 matches 7 positioned ~ ~1 ~ as @e[type=wither_skeleton,tag=tta.render.garlic_mutant,sort=nearest,limit=1] run function tta:entity/monster/garlic_mutant/anim/7
execute unless score @s monkeyhue.temp2 matches 7 run scoreboard players reset @s monkeyhue.time3
execute unless score @s monkeyhue.temp2 matches 7 run scoreboard players reset @s monkeyhue.time4
execute unless score @s monkeyhue.temp2 matches 7 run scoreboard players set @s monkeyhue.temp2 7

execute if block ~ ~1 ~ #tta:airlike rotated ~ 0 positioned ^ ^ ^5 unless block ~ ~4 ~ #tta:werewolf_passable run scoreboard players set @s monkeyhue.entity.AIState 3
execute if block ~ ~1 ~ #tta:airlike rotated ~ 0 positioned ^ ^ ^5 unless block ~ ~5 ~ #tta:werewolf_passable run scoreboard players set @s monkeyhue.entity.AIState 3
execute if block ~ ~1 ~ #tta:airlike rotated ~ 0 positioned ^ ^ ^3 unless block ~ ~4 ~ #tta:werewolf_passable run scoreboard players set @s monkeyhue.entity.AIState 3
execute if block ~ ~1 ~ #tta:airlike rotated ~ 0 positioned ^ ^ ^3 unless block ~ ~5 ~ #tta:werewolf_passable run scoreboard players set @s monkeyhue.entity.AIState 3
execute if block ~ ~1 ~ #tta:airlike rotated ~ 0 positioned ^ ^ ^3 unless block ~ ~6 ~ #tta:werewolf_passable run scoreboard players set @s monkeyhue.entity.AIState 3

execute rotated ~ 0 run teleport @s ^ ^ ^0.6 ~ 0
execute rotated ~ 0 positioned ^ ^ ^3.5 if entity @e[distance=0..3,type=!#tta:inedible,type=!#tta:explosive,tag=!tta.entity.hitbox,tag=!smithed.strict] run scoreboard players set @s monkeyhue.entity.AIState 11
execute rotated ~ 0 positioned ^ ^ ^3 unless block ~ ~0.25 ~ #tta:werewolf_passable positioned ~ ~0.25 ~ positioned ^ ^ ^-3 run teleport @s ^ ^ ^0.6 ~ 0
execute rotated ~ 0 positioned ^ ^ ^3 unless block ~ ~1 ~ #tta:werewolf_passable positioned ~ ~1 ~ positioned ^ ^ ^-3 run teleport @s ^ ^ ^0.45 ~ 0
execute rotated ~ 0 positioned ^ ^ ^3 if block ~ ~-0.25 ~ #tta:werewolf_passable if block ~ ~-0.1 ~ #tta:werewolf_passable positioned ~ ~-0.25 ~ positioned ^ ^ ^-3 if block ~ ~-0.1 ~ #tta:werewolf_passable run teleport @s ^ ^ ^0.6 ~ 0
execute rotated ~ 0 positioned ^ ^ ^3 if block ~ ~-1 ~ #tta:werewolf_passable if block ~ ~-0.1 ~ #tta:werewolf_passable positioned ~ ~-1 ~ positioned ^ ^ ^-3 if block ~ ~-0.1 ~ #tta:werewolf_passable run teleport @s ^ ^ ^0.45 ~ 0

scoreboard players add @s monkeyhue.time3 1

execute if score @s monkeyhue.time3 matches 111.. if block ~ ~1 ~ #tta:airlike run scoreboard players set @s monkeyhue.entity.AIState 3
execute if score @s monkeyhue.time3 matches 111.. unless block ~ ~1 ~ #tta:airlike run tag @a[limit=1,distance=0..128,sort=furthest,gamemode=!creative,gamemode=!spectator] add tta.temp.garlicTargeted
execute if score @s monkeyhue.time3 matches 111.. unless block ~ ~1 ~ #tta:airlike run scoreboard players set @s monkeyhue.entity.AIState 12

scoreboard players add @s monkeyhue.time4 1

execute if score @s monkeyhue.time4 matches 1 run playsound minecraft:block.big_dripleaf.step hostile @a ~ ~ ~ 2 0.5
execute if score @s monkeyhue.time4 matches 6 run playsound minecraft:block.big_dripleaf.step hostile @a ~ ~ ~ 2 0.5
execute if score @s monkeyhue.time4 matches 11 run playsound minecraft:block.big_dripleaf.step hostile @a ~ ~ ~ 2 0.5
execute if score @s monkeyhue.time4 matches 16 run playsound minecraft:block.big_dripleaf.step hostile @a ~ ~ ~ 2 0.5

execute if score @s monkeyhue.time4 matches 22.. run scoreboard players reset @s monkeyhue.time4