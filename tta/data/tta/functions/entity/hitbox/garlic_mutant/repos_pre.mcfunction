#-------------------------------------------------------------#
#
# Controls hitboxes when they take damage
#
#-------------------------------------------------------------#

execute at @s unless score @e[type=marker,limit=1,sort=nearest,tag=tta.entity.garlic_mutant,distance=0..4] monkeyhue.temp9 = @s monkeyhue.temp9 run function tta:entity/hitbox/garlic_mutant/repos
execute at @s unless entity @e[type=marker,limit=1,sort=nearest,tag=tta.entity.garlic_mutant,distance=0..4] run function tta:entity/hitbox/garlic_mutant/repos