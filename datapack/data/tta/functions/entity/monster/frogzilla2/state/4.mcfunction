#-------------------------------------------------------------#
#
# Controls Frogzilla.
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.temp2 matches 4 run execute store result score @s monkeyhue.temp3 run loot spawn ~ ~ ~ loot tta:rng/frogzilla/2
execute unless score @s monkeyhue.temp2 matches 4 run scoreboard players set @s monkeyhue.temp2 4

execute if score @s monkeyhue.temp3 matches 1 run scoreboard players set @s monkeyhue.entity.AIState 2
execute if score @s monkeyhue.temp3 matches 2 run scoreboard players set @s monkeyhue.entity.AIState 3
