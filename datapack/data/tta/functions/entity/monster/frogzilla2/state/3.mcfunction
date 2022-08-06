#-------------------------------------------------------------#
#
# Controls Frogzilla.
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.temp2 matches 3 store result storage tta:root temp.entityAIState.frogzilla int 1 run scoreboard players get @s monkeyhue.entity.AIState
execute unless score @s monkeyhue.temp2 matches 3 run execute store result score @s monkeyhue.time3 run loot spawn ~ ~ ~ loot tta:rng/frogzilla/turn_time
execute unless score @s monkeyhue.temp2 matches 3 run scoreboard players reset @s monkeyhue.time4
execute unless score @s monkeyhue.temp2 matches 3 run scoreboard players set @s monkeyhue.temp2 3

teleport @s ~ ~ ~ ~-1 ~

scoreboard players add @s monkeyhue.time4 1
execute if score @s monkeyhue.time4 matches 8 run function tta:entity/monster/frogzilla2/event/step/step_left
execute if score @s monkeyhue.time4 matches 33 run function tta:entity/monster/frogzilla2/event/step/step_right
execute if score @s monkeyhue.time4 matches 48.. run scoreboard players reset @s monkeyhue.time4

scoreboard players remove @s monkeyhue.time3 1
execute if score @s monkeyhue.time3 matches ..0 run scoreboard players set @s monkeyhue.entity.AIState 0