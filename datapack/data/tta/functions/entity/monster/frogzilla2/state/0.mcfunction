#-------------------------------------------------------------#
#
# Controls Frogzilla.
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.temp2 matches 0 store result storage tta:root temp.entityAIState.frogzilla int 1 run scoreboard players get @s monkeyhue.entity.AIState
execute unless score @s monkeyhue.temp2 matches 0 run execute store result score @s monkeyhue.time3 run loot spawn ~ ~ ~ loot tta:rng/frogzilla/walk_time
execute unless score @s monkeyhue.temp2 matches 0 run scoreboard players reset @s monkeyhue.time4
execute unless score @s monkeyhue.temp2 matches 0 run scoreboard players set @s monkeyhue.temp2 0

execute positioned ^ ^ ^5 unless block ~ ~6 ~ #tta:frogzilla_passable run scoreboard players set @s monkeyhue.entity.AIState 4
execute positioned ^ ^ ^5 unless block ~ ~7 ~ #tta:frogzilla_passable run scoreboard players set @s monkeyhue.entity.AIState 4
execute positioned ^ ^ ^5 unless block ~ ~8 ~ #tta:frogzilla_passable run scoreboard players set @s monkeyhue.entity.AIState 4
execute positioned ^ ^ ^5 unless block ~ ~9 ~ #tta:frogzilla_passable run scoreboard players set @s monkeyhue.entity.AIState 4
execute positioned ^ ^ ^5 unless block ~ ~10 ~ #tta:frogzilla_passable run scoreboard players set @s monkeyhue.entity.AIState 4
execute positioned ^ ^ ^5 unless block ~ ~11 ~ #tta:frogzilla_passable run scoreboard players set @s monkeyhue.entity.AIState 4
execute positioned ^ ^ ^5 unless block ~ ~12 ~ #tta:frogzilla_passable run scoreboard players set @s monkeyhue.entity.AIState 4
execute positioned ^ ^ ^5 unless block ~ ~13 ~ #tta:frogzilla_passable run scoreboard players set @s monkeyhue.entity.AIState 4
execute positioned ^ ^ ^5 unless block ~ ~14 ~ #tta:frogzilla_passable run scoreboard players set @s monkeyhue.entity.AIState 4
execute positioned ^ ^ ^5 unless block ~ ~15 ~ #tta:frogzilla_passable run scoreboard players set @s monkeyhue.entity.AIState 4
execute positioned ^ ^ ^5 unless block ~ ~16 ~ #tta:frogzilla_passable run scoreboard players set @s monkeyhue.entity.AIState 4
execute positioned ^ ^ ^5 unless block ~ ~17 ~ #tta:frogzilla_passable run scoreboard players set @s monkeyhue.entity.AIState 4
execute positioned ^ ^ ^5 unless block ~ ~18 ~ #tta:frogzilla_passable run scoreboard players set @s monkeyhue.entity.AIState 4
execute positioned ^ ^ ^5 unless block ~ ~19 ~ #tta:frogzilla_passable run scoreboard players set @s monkeyhue.entity.AIState 4
execute positioned ^ ^ ^5 unless block ~ ~20 ~ #tta:frogzilla_passable run scoreboard players set @s monkeyhue.entity.AIState 4
execute positioned ^ ^ ^5 unless block ~ ~21 ~ #tta:frogzilla_passable run scoreboard players set @s monkeyhue.entity.AIState 4
execute positioned ^ ^ ^5 unless block ~ ~22 ~ #tta:frogzilla_passable run scoreboard players set @s monkeyhue.entity.AIState 4
execute positioned ^ ^ ^5 unless block ~ ~23 ~ #tta:frogzilla_passable run scoreboard players set @s monkeyhue.entity.AIState 4
execute positioned ^ ^ ^5 unless block ~ ~24 ~ #tta:frogzilla_passable run scoreboard players set @s monkeyhue.entity.AIState 4
execute positioned ^ ^ ^9 unless block ~ ~18 ~ #tta:frogzilla_passable run scoreboard players set @s monkeyhue.entity.AIState 4
execute positioned ^ ^ ^9 unless block ~ ~19 ~ #tta:frogzilla_passable run scoreboard players set @s monkeyhue.entity.AIState 4
execute positioned ^ ^ ^9 unless block ~ ~20 ~ #tta:frogzilla_passable run scoreboard players set @s monkeyhue.entity.AIState 4
execute positioned ^ ^ ^9 unless block ~ ~21 ~ #tta:frogzilla_passable run scoreboard players set @s monkeyhue.entity.AIState 4
execute positioned ^ ^ ^9 unless block ~ ~22 ~ #tta:frogzilla_passable run scoreboard players set @s monkeyhue.entity.AIState 4
execute positioned ^ ^ ^9 unless block ~ ~23 ~ #tta:frogzilla_passable run scoreboard players set @s monkeyhue.entity.AIState 4
execute positioned ^ ^ ^9 unless block ~ ~24 ~ #tta:frogzilla_passable run scoreboard players set @s monkeyhue.entity.AIState 4

teleport @s ^ ^ ^0.105 ~ 0
execute positioned ^ ^ ^3 unless block ~ ~0.25 ~ #tta:frogzilla_passable positioned ~ ~0.25 ~ positioned ^ ^ ^-3 run teleport @s ^ ^ ^0.105 ~ 0
execute positioned ^ ^ ^3 unless block ~ ~1 ~ #tta:frogzilla_passable positioned ~ ~1 ~ positioned ^ ^ ^-3 run teleport @s ^ ^ ^0.105 ~ 0
execute positioned ^ ^ ^3 if block ~ ~-0.25 ~ #tta:frogzilla_passable positioned ~ ~-0.25 ~ positioned ^ ^ ^-3 run teleport @s ^ ^ ^0.105 ~ 0
execute positioned ^ ^ ^3 if block ~ ~-1 ~ #tta:frogzilla_passable if block ~ ~-0.1 ~ #tta:frogzilla_passable positioned ~ ~-1 ~ positioned ^ ^ ^-3 run teleport @s ^ ^ ^0.105 ~ 0

scoreboard players add @s monkeyhue.time4 1
execute if score @s monkeyhue.time4 matches 8 run function tta:entity/monster/frogzilla2/event/step/step_left
execute if score @s monkeyhue.time4 matches 33 run function tta:entity/monster/frogzilla2/event/step/step_right
execute if score @s monkeyhue.time4 matches 48.. run scoreboard players reset @s monkeyhue.time4

execute if entity @e[distance=..200,type=!#tta:inedible,tag=tta.temp.frogzillaTargeted] run scoreboard players set @s monkeyhue.entity.AIState 11

scoreboard players remove @s monkeyhue.time3 1
execute if score @s monkeyhue.time3 matches ..0 run scoreboard players set @s monkeyhue.entity.AIState 4