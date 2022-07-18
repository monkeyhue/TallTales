#-------------------------------------------------------------#
#
# Oculo Insomnius' state machine
#
#-------------------------------------------------------------#

particle dust_color_transition 0.039 0.698 0.020 2 0.373 0.882 0.078 ~ ~0.8 ~ 0.2 0.15 0.2 1 1 normal
particle dust_color_transition 0.039 0.698 0.020 1 0.373 0.882 0.078 ~ ~1.1 ~ 0.3 0.3 0.3 1 1 normal

#----- AI States -----#

# Idle
execute if score @s monkeyhue.entity.AIState matches 0 run function tta:entity/projectile/eye_laser_manic/state/0

# Move
execute if score @s monkeyhue.entity.AIState matches 1 run function tta:entity/projectile/eye_laser_manic/state/1

# Shoot
execute if score @s monkeyhue.entity.AIState matches 2 run function tta:entity/projectile/eye_laser_manic/state/2

# Die
execute if score @s monkeyhue.entity.AIState matches 3 run function tta:entity/projectile/eye_laser_manic/state/3


#----- Other Behavior -----#

execute if score @s monkeyhue.time1 matches 600.. run scoreboard players set @s monkeyhue.entity.AIState 3