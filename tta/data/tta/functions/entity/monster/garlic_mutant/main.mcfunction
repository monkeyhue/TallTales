#-------------------------------------------------------------#
#
# The Garlic Mutant's state machine and tick behavior
#
#-------------------------------------------------------------#

execute unless score @s monkeyhue.entity.AIState matches -1.. run function tta:entity/monster/garlic_mutant/init
execute positioned ~ ~1 ~ rotated as @s if score @e[type=wither_skeleton,tag=tta.render.garlic_mutant,sort=nearest,limit=1] monkeyhue.temp9 = @s monkeyhue.temp9 run teleport @e[type=wither_skeleton,tag=tta.render.garlic_mutant,sort=nearest,limit=1] ^ ^ ^ ~180 0

#----- AI States -----#

# Sleep
execute if score @s monkeyhue.entity.AIState matches 0 run function tta:entity/monster/garlic_mutant/state/0

# Wake Up
execute if score @s monkeyhue.entity.AIState matches 1 run function tta:entity/monster/garlic_mutant/state/1

# Idle (Ground)
execute if score @s monkeyhue.entity.AIState matches 2 run function tta:entity/monster/garlic_mutant/state/2

# Idle (Mobile)
execute if score @s monkeyhue.entity.AIState matches 3 run function tta:entity/monster/garlic_mutant/state/3

# Uproot
execute if score @s monkeyhue.entity.AIState matches 4 run function tta:entity/monster/garlic_mutant/state/4

# Ingrain
execute if score @s monkeyhue.entity.AIState matches 5 run function tta:entity/monster/garlic_mutant/state/5

##### Gas Attack
execute if score @s monkeyhue.entity.AIState matches 6 run function tta:entity/monster/garlic_mutant/state/6

# Run
execute if score @s monkeyhue.entity.AIState matches 7 run function tta:entity/monster/garlic_mutant/state/7

### Ingrain (Into Dig)
execute if score @s monkeyhue.entity.AIState matches 8 run function tta:entity/monster/garlic_mutant/state/8

##### Dig
execute if score @s monkeyhue.entity.AIState matches 9 run function tta:entity/monster/garlic_mutant/state/9

# Detect
execute if score @s monkeyhue.entity.AIState matches 10 run function tta:entity/monster/garlic_mutant/state/10

# Eat
execute if score @s monkeyhue.entity.AIState matches 11 run function tta:entity/monster/garlic_mutant/state/11

# Fast Run
execute if score @s monkeyhue.entity.AIState matches 12 run function tta:entity/monster/garlic_mutant/state/12

# States 13-15 have been scrapped due to redundancy and making gameplay quite stale. They may be re-added in a later patch.

# Death (In Ground)
execute if score @s monkeyhue.entity.AIState matches 16 run function tta:entity/monster/garlic_mutant/state/16

# Death (Standing)
execute if score @s monkeyhue.entity.AIState matches 17 run function tta:entity/monster/garlic_mutant/state/17

##### Digging
execute if score @s monkeyhue.entity.AIState matches 18 run function tta:entity/monster/garlic_mutant/state/18

##### Dig Out
execute if score @s monkeyhue.entity.AIState matches 19 run function tta:entity/monster/garlic_mutant/state/19

# Go To Sleep
execute if score @s monkeyhue.entity.AIState matches 20 run function tta:entity/monster/garlic_mutant/state/20

#----- Other Behavior -----#

scoreboard players add @s monkeyhue.time1 1

#execute if score @s monkeyhue.time5 matches ..10 run function tta:entity/monster/garlic_mutant/event/hit

# Death detection
execute unless score @s monkeyhue.entity.AIState matches 16..17 if score @s monkeyhue.entity.customHealth matches ..0 unless score @s monkeyhue.entity.AIState matches 3..5 unless score @s monkeyhue.entity.AIState matches 7 unless score @s monkeyhue.entity.AIState matches 10..13 run scoreboard players set @s monkeyhue.entity.AIState 16
execute unless score @s monkeyhue.entity.AIState matches 16..17 if score @s monkeyhue.entity.customHealth matches ..0 if score @s monkeyhue.entity.AIState matches 3..5 run scoreboard players set @s monkeyhue.entity.AIState 17
execute unless score @s monkeyhue.entity.AIState matches 16..17 if score @s monkeyhue.entity.customHealth matches ..0 if score @s monkeyhue.entity.AIState matches 7 run scoreboard players set @s monkeyhue.entity.AIState 17
execute unless score @s monkeyhue.entity.AIState matches 16..17 if score @s monkeyhue.entity.customHealth matches ..0 if score @s monkeyhue.entity.AIState matches 10..13 run scoreboard players set @s monkeyhue.entity.AIState 17