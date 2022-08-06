#-------------------------------------------------------------#
#
# Controls Frogzilla.
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.temp2 matches 22 store result storage tta:root temp.entityAIState.frogzilla int 1 run scoreboard players get @s monkeyhue.entity.AIState
execute unless score @s monkeyhue.temp2 matches 22 run scoreboard players reset @s monkeyhue.time3
execute unless score @s monkeyhue.temp2 matches 22 run scoreboard players reset @s monkeyhue.time4
execute unless score @s monkeyhue.temp2 matches 22 run scoreboard players set @s monkeyhue.temp2 22

scoreboard players add @s monkeyhue.time3 1

scoreboard players add @s monkeyhue.time4 1

execute if score @s monkeyhue.time4 matches 36 run playsound minecraft:block.wet_grass.step hostile @a ~ ~ ~ 8 0.7
execute if score @s monkeyhue.time4 matches 36 run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 8 0.5
execute if score @s monkeyhue.time4 matches 50.. run scoreboard players reset @s monkeyhue.time4

execute if score @s monkeyhue.time3 matches 200.. run scoreboard players set @s monkeyhue.entity.AIState 23