#-------------------------------------------------------------#
#
# Controls hitboxes when they take damage
#
#-------------------------------------------------------------#

execute as @e[type=marker,sort=random,distance=4..,tag=tta.entity.garlic_mutant] if score @s monkeyhue.temp9 = @e[sort=nearest,limit=1,tag=tta.entity.hitbox.garlic_mutant,type=#tta:bones/default] monkeyhue.temp9 run tag @s add tta.temp.hitboxTarget
teleport @s @e[type=marker,tag=tta.temp.hitboxTarget,limit=1]
tag @e[type=marker,tag=tta.temp.hitboxTarget] remove tta.temp.hitboxTarget