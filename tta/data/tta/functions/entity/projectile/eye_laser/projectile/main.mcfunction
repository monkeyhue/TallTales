particle dust_color_transition 0.620 0.000 0.000 1 0.898 0.208 0.000 ^ ^ ^-0.75 0.15 0.15 0.15 1 1 normal
particle dust_color_transition 0.620 0.000 0.000 2 0.898 0.208 0.000 ^ ^ ^-0.75 0.01 0.01 0.01 1 1 force
particle dust_color_transition 0.620 0.000 0.000 1 0.898 0.208 0.000 ^ ^ ^0.75 0.15 0.15 0.15 1 1 normal
particle dust_color_transition 0.620 0.000 0.000 2 0.898 0.208 0.000 ^ ^ ^0.75 0.01 0.01 0.01 1 1 force

teleport @s ^ ^ ^2.5

execute if entity @e[distance=0..2.25,type=!#tta:not_mobs_players] run function tta:entity/projectile/eye_laser/projectile/hit
execute unless block ~ ~ ~ #tta:airlike_with_liquid run function tta:entity/projectile/eye_laser/projectile/hit_ground
execute if score @s monkeyhue.time1 matches 50.. run function tta:entity/projectile/eye_laser/projectile/hit_ground
