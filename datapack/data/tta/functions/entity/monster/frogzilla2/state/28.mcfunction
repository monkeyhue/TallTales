#-------------------------------------------------------------#
#
# Controls Frogzilla.
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.temp2 matches 28 store result storage tta:root temp.entityAIState.frogzilla int 1 run scoreboard players get @s monkeyhue.entity.AIState
execute unless score @s monkeyhue.temp2 matches 28 run scoreboard players reset @s monkeyhue.time3
execute unless score @s monkeyhue.temp2 matches 28 run scoreboard players reset @s monkeyhue.time4
execute unless score @s monkeyhue.temp2 matches 28 run scoreboard players set @s monkeyhue.temp2 28

scoreboard players add @s monkeyhue.time3 1

execute if score @s monkeyhue.time3 matches 40..50 run scoreboard players add @s monkeyhue.time4 1

execute if score @s monkeyhue.time4 matches 1 positioned ^ ^14 ^8 run function tta:entity/projectile/frogzilla2/spawn
execute if score @s monkeyhue.time4 matches 4.. run scoreboard players reset @s monkeyhue.time4

execute if score @s monkeyhue.time3 matches 60.. unless score @s monkeyhue.temp9 matches 1.. run scoreboard players set @s monkeyhue.entity.AIState 11