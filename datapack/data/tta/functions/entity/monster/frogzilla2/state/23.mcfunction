#-------------------------------------------------------------#
#
# Controls Frogzilla.
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.temp2 matches 23 store result storage tta:root temp.entityAIState.frogzilla int 1 run scoreboard players get @s monkeyhue.entity.AIState
execute unless score @s monkeyhue.temp2 matches 23 run scoreboard players reset @s monkeyhue.time3
execute unless score @s monkeyhue.temp2 matches 23 run scoreboard players reset @s monkeyhue.time4
execute unless score @s monkeyhue.temp2 matches 23 run scoreboard players set @s monkeyhue.temp2 23

scoreboard players add @s monkeyhue.time3 1

execute if score @s monkeyhue.time3 matches 53 run playsound minecraft:block.wet_grass.step hostile @a ~ ~ ~ 8 0.7
execute if score @s monkeyhue.time3 matches 53 run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 8 0.5
execute if score @s monkeyhue.time3 matches 59 run playsound minecraft:block.wet_grass.step hostile @a ~ ~ ~ 8 0.7
execute if score @s monkeyhue.time3 matches 59 run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 8 0.5

execute if score @s monkeyhue.time3 matches 59.. run scoreboard players set @s monkeyhue.entity.AIState 0

