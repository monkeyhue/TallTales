#---------------- tta:entity/projectile/player ----------------#
#
# Main area for player-made projectiles.
#
#-------------------------------------------------------------#

execute if entity @s[tag=tta.projectile.eye_laser] run function tta:entity/projectile/eye_laser/main
execute if entity @s[tag=tta.projectile.eye_laser.beam] run function tta:entity/projectile/eye_laser/projectile/main
execute if entity @s[tag=tta.projectile.eye_manic] run function tta:entity/projectile/eye_laser_manic/main
execute if entity @s[tag=tta.projectile.eye_manic.beam] run function tta:entity/projectile/eye_laser_manic/projectile/main

execute if entity @s[tag=tta.projectile.wooden_stake] run function tta:entity/projectile/thrown/wooden_stake/detect/main
execute if entity @s[tag=tta.projectile.silver_stake] run function tta:entity/projectile/thrown/silver_stake/detect/main