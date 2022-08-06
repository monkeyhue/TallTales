#-------------------------------------------------------------#
#
# Controls Frogzilla's tongue
#
#-------------------------------------------------------------#
teleport @e[type=!player,type=!#tta:inedible,tag=tta.temp.eatingByFrogzilla,limit=8,sort=nearest,tag=!smithed.entity] ~ ~-0.5 ~
teleport @a[tag=tta.temp.eatingByFrogzilla,sort=nearest] ~ ~ ~

execute if score @s monkeyhue.time1 matches 26..40 if block ^ ^ ^2 #tta:airlike_with_liquid if block ^ ^ ^1 #tta:airlike_with_liquid if block ~ ~ ~ #tta:airlike_with_liquid run scoreboard players add @s monkeyhue.temp1 1

execute if score @s monkeyhue.time1 matches 26..80 as @e[type=!#tta:inedible,type=!#tta:explosive,tag=!tta.temp.eatingByFrogzilla,distance=0..3.5,limit=1,tag=!tta.entity.hitbox,tag=!smithed.entity,nbt=!{Invulnerable:1b}] run function tta:entity/monster/frogzilla2/event/tongue/catch
execute if score @s monkeyhue.time1 matches 26..80 as @e[type=#tta:explosive,tag=!tta.temp.eatingByFrogzilla,distance=0..5,limit=1,tag=!tta.entity.hitbox,tag=!smithed.entity,nbt=!{Invulnerable:1b}] run function tta:entity/monster/frogzilla2/event/tongue/catch

execute if score @s monkeyhue.time1 matches 26.. run particle splash ~ ~ ~ 1 0.25 1 1 2 normal
execute if score @s monkeyhue.time1 matches 64.. run scoreboard players remove @s monkeyhue.temp1 1

#execute if block ~ ~ ~ tnt run summon tnt ~ ~ ~ {Fuse:100}
#execute if block ~ ~ ~ tnt run setblock ~ ~ ~ air replace

execute if score @s monkeyhue.time1 matches 80.. run function tta:entity/monster/frogzilla2/event/eat
execute if score @s monkeyhue.time1 matches 80.. run scoreboard players add @e[type=marker,limit=1,sort=nearest,tag=tta.entity.frogzilla2,distance=0..48] monkeyhue.time6 100
execute if score @s monkeyhue.time1 matches 80.. run kill @s