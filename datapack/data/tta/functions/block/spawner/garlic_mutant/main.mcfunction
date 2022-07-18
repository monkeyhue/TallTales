#-------------------------------------------------------------#
#
# Spawns a garlic mutant when loaded
#
#-------------------------------------------------------------#

execute facing entity @e[type=!#tta:not_mobs,limit=1,sort=nearest] feet run function tta:entity/monster/garlic_mutant/summon
kill @s