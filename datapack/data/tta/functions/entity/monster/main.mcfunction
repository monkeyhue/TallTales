#-------------------------------------------------------------#
#
# Controls monster behavior each tick.
#
#-------------------------------------------------------------#

# Frogzilla
execute if entity @s[tag=tta.entity.frogzilla2] run function tta:entity/monster/frogzilla2/main

# Garlic Mutant
execute if entity @s[tag=tta.entity.garlic_mutant] run function tta:entity/monster/garlic_mutant/main