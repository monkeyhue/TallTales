#-------------------------------------------------------------#
#
# The Werewolf's state machine and tick behavior
#
#-------------------------------------------------------------#

execute unless score @s monkeyhue.entity.AIState matches -1.. run function tta:entity/monster/werewolf/init

#----- AI States -----#

# Idle 1
execute if score @s monkeyhue.entity.AIState matches 0 run function tta:entity/monster/werewolf/state/0

# Idle 2
execute if score @s monkeyhue.entity.AIState matches 1 run function tta:entity/monster/werewolf/state/1

# Walk
execute if score @s monkeyhue.entity.AIState matches 2 run function tta:entity/monster/werewolf/state/2

# Run 1
execute if score @s monkeyhue.entity.AIState matches 3 run function tta:entity/monster/werewolf/state/3

# Run 2 (In)
execute if score @s monkeyhue.entity.AIState matches 4 run function tta:entity/monster/werewolf/state/4

# Run 2
execute if score @s monkeyhue.entity.AIState matches 5 run function tta:entity/monster/werewolf/state/5

# Run 1 (Chase Food)
execute if score @s monkeyhue.entity.AIState matches 6 run function tta:entity/monster/werewolf/state/6

# Detect
execute if score @s monkeyhue.entity.AIState matches 7 run function tta:entity/monster/werewolf/state/7

# Attack 1
execute if score @s monkeyhue.entity.AIState matches 8 run function tta:entity/monster/werewolf/state/8

# Attack 1 (Chase Food)
execute if score @s monkeyhue.entity.AIState matches 9 run function tta:entity/monster/werewolf/state/9

# Eat
execute if score @s monkeyhue.entity.AIState matches 10 run function tta:entity/monster/werewolf/state/10

# Eat (Chase Food)
execute if score @s monkeyhue.entity.AIState matches 11 run function tta:entity/monster/werewolf/state/11

# Jump In
execute if score @s monkeyhue.entity.AIState matches 12 run function tta:entity/monster/werewolf/state/12

# Jump
execute if score @s monkeyhue.entity.AIState matches 13 run function tta:entity/monster/werewolf/state/13

# Jump into Run 1
execute if score @s monkeyhue.entity.AIState matches 14 run function tta:entity/monster/werewolf/state/14

# Break
execute if score @s monkeyhue.entity.AIState matches 15 run function tta:entity/monster/werewolf/state/15

# Die
execute if score @s monkeyhue.entity.AIState matches 17 run function tta:entity/monster/werewolf/state/17

# Cookie Death
execute if score @s monkeyhue.entity.AIState matches 18 run function tta:entity/monster/werewolf/state/18

#----- Other Behavior -----#

#Timers
scoreboard players add @s monkeyhue.time1 1
execute if score @s monkeyhue.time5 matches 1.. run scoreboard players remove @s monkeyhue.time5

#Hurt Detection
execute if entity @s[nbt={HurtTime:10s}] run function tta:entity/monster/werewolf/event/hurt/in
execute if entity @s[nbt={HurtTime:1s}] run function tta:entity/monster/werewolf/event/hurt/out

# Death detection
execute if score @s monkeyhue.entity.customHealth matches ..0 run scoreboard players set @s monkeyhue.entity.AIState 17