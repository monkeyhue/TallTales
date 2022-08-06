#-------------------------------------------------------------#
#
# Controls Frogzilla.
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.temp2 matches 11 store result storage tta:root temp.entityAIState.frogzilla int 1 run scoreboard players get @s monkeyhue.entity.AIState
execute unless score @s monkeyhue.temp2 matches 11 run scoreboard players reset @s monkeyhue.time3
execute unless score @s monkeyhue.temp2 matches 11 run scoreboard players reset @s monkeyhue.time4
execute unless score @s monkeyhue.temp2 matches 11 run scoreboard players set @s monkeyhue.temp2 11

scoreboard players add @s monkeyhue.time3 1
scoreboard players add @s monkeyhue.time7 1

execute facing entity @e[type=!#tta:inedible,limit=1,tag=tta.temp.frogzillaTargeted] feet run teleport @s ^ ^ ^0.2 ~ 0
execute unless block ~ ~0.25 ~ #tta:frogzilla_passable positioned ~ ~0.25 ~ facing entity @e[type=!#tta:inedible,limit=1,tag=tta.temp.frogzillaTargeted] feet run teleport @s ^ ^ ^0.57 ~ 0
execute unless block ~ ~1 ~ #tta:frogzilla_passable positioned ~ ~1 ~ facing entity @e[type=!#tta:inedible,limit=1,tag=tta.temp.frogzillaTargeted] feet run teleport @s ^ ^ ^0.57 ~ 0
execute if block ~ ~-0.25 ~ #tta:frogzilla_passable positioned ~ ~-0.25 ~ facing entity @e[type=!#tta:inedible,limit=1,tag=tta.temp.frogzillaTargeted] feet run teleport @s ^ ^ ^0.57 ~ 0
execute if block ~ ~-1 ~ #tta:frogzilla_passable positioned ~ ~-1 ~ facing entity @e[type=!#tta:inedible,limit=1,tag=tta.temp.frogzillaTargeted] feet run teleport @s ^ ^ ^0.57 ~ 0

scoreboard players add @s monkeyhue.time4 1
execute if score @s monkeyhue.time4 matches 4 run function tta:entity/monster/frogzilla2/event/step/step_left
execute if score @s monkeyhue.time4 matches 14 run function tta:entity/monster/frogzilla2/event/step/step_right
execute if score @s monkeyhue.time4 matches 20.. run scoreboard players reset @s monkeyhue.time4

execute at @s if entity @p[tag=tta.temp.frogzillaTargeted,distance=0..2] run scoreboard players set @s monkeyhue.time3 500

execute if score @s monkeyhue.time3 matches 500.. run scoreboard players set @s monkeyhue.entity.AIState 0
execute if score @s monkeyhue.time3 matches 500.. run tag @a[tag=tta.temp.frogzillaTargeted] remove tta.temp.frogzillaTargeted
execute if score @s monkeyhue.time3 matches 500.. run scoreboard players reset @s monkeyhue.time3