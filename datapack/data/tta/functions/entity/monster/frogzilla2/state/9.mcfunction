#-------------------------------------------------------------#
#
# Controls Frogzilla.
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.temp2 matches 9 store result storage tta:root temp.entityAIState.frogzilla int 1 run scoreboard players get @s monkeyhue.entity.AIState
execute unless score @s monkeyhue.temp2 matches 9 run scoreboard players reset @s monkeyhue.time3
execute unless score @s monkeyhue.temp2 matches 9 positioned ^ ^17 ^6 rotated as @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["tta.projectile","tta.projectile.enemy","tta.projectile.frogzilla1"]}
execute unless score @s monkeyhue.temp2 matches 9 as @e[type=armor_stand,tag=tta.projectile.frogzilla1,distance=..64,sort=nearest,limit=1] run teleport @s ^ ^17 ^6 ~ ~
execute unless score @s monkeyhue.temp2 matches 9 run scoreboard players set @s monkeyhue.temp2 9

scoreboard players add @s monkeyhue.time3 1

execute if score @s monkeyhue.time3 matches 25 run playsound minecraft:entity.slime.jump hostile @a ~ ~ ~ 8 0.5
execute if score @s monkeyhue.time3 matches 28..34 as @e[type=armor_stand,tag=tta.projectile.frogzilla1,distance=..64,sort=nearest,limit=1] at @s facing ^ ^-6 ^6 if block ^ ^ ^2 #tta:airlike_with_liquid if block ^ ^ ^1 #tta:airlike_with_liquid if block ~ ~ ~ #tta:airlike_with_liquid run teleport @s ^ ^ ^3.3
execute if score @s monkeyhue.time3 matches 63..70 as @e[type=armor_stand,tag=tta.projectile.frogzilla1,distance=..64,sort=nearest,limit=1,scores={monkeyhue.temp1=1..}] at @s facing ^ ^-6 ^6 run teleport @s ^ ^ ^-3.2

execute if score @s monkeyhue.time3 matches 81 run playsound minecraft:entity.slime.jump_small hostile @a ~ ~ ~ 8 0.5

execute if score @s monkeyhue.time3 matches 104.. run tag @e[type=!#tta:inedible,tag=tta.temp.eatingByFrogzilla] remove tta.temp.eatingByFrogzilla
execute if score @s monkeyhue.time3 matches 104.. if score @s monkeyhue.temp9 matches 1.. run scoreboard players set @s monkeyhue.entity.AIState 16
execute if score @s monkeyhue.time3 matches 104.. unless score @s monkeyhue.temp9 matches 1.. run scoreboard players set @s monkeyhue.entity.AIState 0

