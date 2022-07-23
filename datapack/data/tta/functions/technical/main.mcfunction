#-------------------------------------------------------------#
#
# This is the main function of Tall Tales.
# Runs every tick.
#
# Enjoy Tall Tales, made by Monkeyhue!
#
# Current Version: 0.4
#
#-------------------------------------------------------------#

execute as @a run function tta:entity/player/main

# All entity commands handled here
execute as @e[type=item_frame,tag=tta.block] at @s run function tta:block/main
execute as @e[type=armor_stand,tag=tta.block] at @s run function tta:block/main
execute as @e[type=#tta:forced_mobs,tag=tta.entity,tag=smithed.strict] at @s run function tta:entity/main_forced

# Projectiles
execute as @e[type=snowball,tag=tta.projectile,limit=100] at @s run function tta:entity/projectile/thrown/main
execute as @e[type=armor_stand,tag=tta.projectile,limit=100] at @s run function tta:entity/projectile/main
execute as @e[type=marker,tag=tta.projectile,limit=100] at @s run function tta:entity/projectile/main

schedule function tta:technical/main 1t