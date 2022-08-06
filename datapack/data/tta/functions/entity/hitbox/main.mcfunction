#-------------------------------------------------------------#
#
# Controls hitbox behaviors.
#
#-------------------------------------------------------------#

execute if entity @s[tag=tta.entity.hitbox.frogzilla2] run function tta:entity/hitbox/frogzilla2/main
execute if entity @s[tag=tta.entity.hitbox.garlic_mutant] run function tta:entity/hitbox/garlic_mutant/main
execute if entity @s[tag=tta.entity.hitbox.werewolf] run function tta:entity/hitbox/werewolf/main

#Render Controller
execute if entity @s[tag=tta.render] run function tta:entity/hitbox/render/main