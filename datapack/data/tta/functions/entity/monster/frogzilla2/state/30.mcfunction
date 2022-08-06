#-------------------------------------------------------------#
#
# Controls Frogzilla.
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.temp2 matches 30 facing entity @p eyes run teleport @s ~ ~ ~ ~ ~
execute unless score @s monkeyhue.temp2 matches 30 store result storage tta:root temp.entityAIState.frogzilla int 1 run scoreboard players get @s monkeyhue.entity.AIState
execute unless score @s monkeyhue.temp2 matches 30 run scoreboard players reset @s monkeyhue.time3
execute unless score @s monkeyhue.temp2 matches 30 run scoreboard players set @s monkeyhue.temp2 30

scoreboard players add @s monkeyhue.time3 1

execute if score @s monkeyhue.time3 matches 29 run summon armor_stand ~ ~18 ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["tta.projectile","tta.projectile.enemy","tta.projectile.frogzilla4"]}

execute if score @s monkeyhue.time3 matches 100.. run scoreboard players set @s monkeyhue.entity.AIState 11