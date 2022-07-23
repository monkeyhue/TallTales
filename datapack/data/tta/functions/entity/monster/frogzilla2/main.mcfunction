#-------------------------------------------------------------#
#
# Frogzilla's state machine and tick behavior
#
#-------------------------------------------------------------#

execute unless score @s monkeyhue.entity.AIState matches -1.. run function tta:entity/monster/frogzilla2/init
execute at @s run bossbar set tta:frogzilla2 players @a[distance=0..100]
execute store result bossbar tta:frogzilla2 value run scoreboard players get @s monkeyhue.entity.customHealth

execute positioned ~ ~12 ~ rotated as @s run teleport @e[type=wither_skeleton,tag=tta.render.frogzilla,sort=nearest,limit=1] ~ ~ ~ ~180 0

#----- AI States -----#

# Idle Walk
execute if score @s monkeyhue.entity.AIState matches 0 run function tta:entity/monster/frogzilla2/state/0

# Tongue 1
execute if score @s monkeyhue.entity.AIState matches 1 run function tta:entity/monster/frogzilla2/state/1

# Turn Right
execute if score @s monkeyhue.entity.AIState matches 2 run function tta:entity/monster/frogzilla2/state/2

# Turn Left
execute if score @s monkeyhue.entity.AIState matches 3 run function tta:entity/monster/frogzilla2/state/3

# Turn Random
execute if score @s monkeyhue.entity.AIState matches 4 run function tta:entity/monster/frogzilla2/state/4

# Tongue 2
execute if score @s monkeyhue.entity.AIState matches 5 run function tta:entity/monster/frogzilla2/state/5

# Tongue 3
execute if score @s monkeyhue.entity.AIState matches 6 run function tta:entity/monster/frogzilla2/state/6

# Tongue 4
execute if score @s monkeyhue.entity.AIState matches 7 run function tta:entity/monster/frogzilla2/state/7

# Tongue 5
execute if score @s monkeyhue.entity.AIState matches 8 run function tta:entity/monster/frogzilla2/state/8

# Tongue 6
execute if score @s monkeyhue.entity.AIState matches 9 run function tta:entity/monster/frogzilla2/state/9

# Roar 1
execute if score @s monkeyhue.entity.AIState matches 10 run function tta:entity/monster/frogzilla2/state/10

# Run
execute if score @s monkeyhue.entity.AIState matches 11 run function tta:entity/monster/frogzilla2/state/11

# States 12-15 are deprecated and have been removed

# Eat Explosive
execute if score @s monkeyhue.entity.AIState matches 16 run function tta:entity/monster/frogzilla2/state/16

# Die
execute if score @s monkeyhue.entity.AIState matches 17 run function tta:entity/monster/frogzilla2/state/17

# Die From Explosion
execute if score @s monkeyhue.entity.AIState matches 18 run function tta:entity/monster/frogzilla2/state/18

# Eye Shot
execute if score @s monkeyhue.entity.AIState matches 19 run function tta:entity/monster/frogzilla2/state/19

# Despawn
execute if score @s monkeyhue.entity.AIState matches 20 run function tta:entity/monster/frogzilla2/state/20

#----- Frogzilla 2.0 AI States -----#

# Belly Flop
execute if score @s monkeyhue.entity.AIState matches 21 run function tta:entity/monster/frogzilla2/state/21

# Get Up (Looping)
execute if score @s monkeyhue.entity.AIState matches 22 run function tta:entity/monster/frogzilla2/state/22

# Get Up
execute if score @s monkeyhue.entity.AIState matches 23 run function tta:entity/monster/frogzilla2/state/23

# Roar 2
execute if score @s monkeyhue.entity.AIState matches 24 run function tta:entity/monster/frogzilla2/state/24

# Roar 3
execute if score @s monkeyhue.entity.AIState matches 25 run function tta:entity/monster/frogzilla2/state/25

# Roar 4
execute if score @s monkeyhue.entity.AIState matches 26 run function tta:entity/monster/frogzilla2/state/26

# Atomic Breath
execute if score @s monkeyhue.entity.AIState matches 27 run function tta:entity/monster/frogzilla2/state/27

# Fireball (Into Neutral)
execute if score @s monkeyhue.entity.AIState matches 28 run function tta:entity/monster/frogzilla2/state/28

# Fireball (Into Atomic Breath)
execute if score @s monkeyhue.entity.AIState matches 29 run function tta:entity/monster/frogzilla2/state/29

# Atomic Breath (Up)
execute if score @s monkeyhue.entity.AIState matches 30 run function tta:entity/monster/frogzilla2/state/30

#----- Other Behavior -----#

scoreboard players add @s monkeyhue.time1 1
scoreboard players add @s monkeyhue.time2 1
execute if score @s monkeyhue.time5 matches 1.. run scoreboard players remove @s monkeyhue.time5 1
execute if score @s monkeyhue.time6 matches 1.. run scoreboard players remove @s monkeyhue.time6 1
scoreboard players add @s monkeyhue.time7 1

#Roars to aggro onto players/mobs
execute if score @s monkeyhue.time2 matches 110 unless score @s monkeyhue.entity.AIState matches 5..30 unless score @s monkeyhue.entity.AIState matches 1 run scoreboard players set @s monkeyhue.entity.AIState 10

execute if score @s monkeyhue.time2 matches 910 unless score @s monkeyhue.entity.AIState matches 5..30 unless score @s monkeyhue.entity.AIState matches 1 run scoreboard players set @s monkeyhue.entity.AIState 24

execute if score @s monkeyhue.time2 matches 1710 unless score @s monkeyhue.entity.AIState matches 5..30 unless score @s monkeyhue.entity.AIState matches 1 run scoreboard players set @s monkeyhue.entity.AIState 25

execute if score @s monkeyhue.time2 matches 2510 unless score @s monkeyhue.entity.AIState matches 5..30 unless score @s monkeyhue.entity.AIState matches 1 run scoreboard players set @s monkeyhue.entity.AIState 26

execute if score @s monkeyhue.time2 matches 3200.. run scoreboard players reset @s monkeyhue.time2

#Atomic Breath

execute if score @s monkeyhue.time7 matches 800.. unless score @s monkeyhue.entity.AIState matches 0..10 unless score @s monkeyhue.entity.AIState matches 12.. if entity @a[distance=32..96] run scoreboard players set @s monkeyhue.entity.AIState 27

#Kills Frogzilla
execute if score @s monkeyhue.entity.customHealth matches ..0 unless score @s monkeyhue.entity.AIState matches 17..18 run scoreboard players set @s monkeyhue.entity.AIState 17