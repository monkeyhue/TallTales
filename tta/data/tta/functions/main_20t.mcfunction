#-------------------------------------------------------------#
#
# This is a main function of Tall Tales.
# Runs every second (20 ticks).
#
# Enjoy Tall Tales, made by Monkeyhue!
#
#-------------------------------------------------------------#
execute as @a run function tta:entity/player/main_20t

# All entity commands handled here
execute as @e[type=#tta:block_entities,tag=tta.block_20t] at @s run function tta:block/main_20t
#execute as @e[tag=tta.entity_20t,tag=!smithed.strict,distance=0..64] at @s run function tta:entity/main
execute as @e[type=#tta:forced_mobs,tag=tta.entity_20t,tag=smithed.strict] at @s run function tta:entity/main_forced_20t

schedule function tta:main_20t 20t