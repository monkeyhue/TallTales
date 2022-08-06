#-------------------------------------------------------------#
#
# Controls Frogzilla.
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.temp2 matches 27 facing entity @p eyes run teleport @s ~ ~ ~ ~ ~
execute unless score @s monkeyhue.temp2 matches 27 store result storage tta:root temp.entityAIState.frogzilla int 1 run scoreboard players get @s monkeyhue.entity.AIState
execute unless score @s monkeyhue.temp2 matches 27 run scoreboard players reset @s monkeyhue.time3
execute unless score @s monkeyhue.temp2 matches 27 run scoreboard players reset @s monkeyhue.time4
execute unless score @s monkeyhue.temp2 matches 27 run scoreboard players set @s monkeyhue.temp2 27

scoreboard players add @s monkeyhue.time3 1

execute if score @s monkeyhue.time3 matches 19 run summon armor_stand ^ ^5 ^5 {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["tta.projectile","tta.projectile.enemy","tta.projectile.frogzilla3"]}

execute if score @s monkeyhue.time3 matches 80.. run scoreboard players set @s monkeyhue.time7 0
execute if score @s monkeyhue.time3 matches 80.. run scoreboard players set @s monkeyhue.entity.AIState 11