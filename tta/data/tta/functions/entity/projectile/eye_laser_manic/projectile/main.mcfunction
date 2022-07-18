particle dust_color_transition 0.039 0.698 0.020 1 0.373 0.882 0.078 ^ ^ ^-0.75 0.15 0.15 0.15 1 1 normal
particle dust_color_transition 0.039 0.698 0.020 2 0.373 0.882 0.078 ^ ^ ^-0.75 0.01 0.01 0.01 1 1 force
particle dust_color_transition 0.039 0.698 0.020 1 0.373 0.882 0.078 ^ ^ ^0.75 0.15 0.15 0.15 1 1 normal
particle dust_color_transition 0.039 0.698 0.020 2 0.373 0.882 0.078 ^ ^ ^0.75 0.01 0.01 0.01 1 1 normal

teleport @s ^ ^ ^2.5

execute if entity @e[distance=0..2.25,type=!#tta:not_mobs_players] run function tta:entity/projectile/eye_laser_manic/projectile/hit
execute unless block ~ ~ ~ #tta:airlike_with_liquid run function tta:entity/projectile/eye_laser_manic/projectile/hit_ground
execute if score @s monkeyhue.time1 matches 50.. run function tta:entity/projectile/eye_laser_manic/projectile/hit_ground
