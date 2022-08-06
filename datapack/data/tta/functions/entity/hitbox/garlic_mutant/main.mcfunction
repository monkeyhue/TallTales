#-------------------------------------------------------------#
#
# Controls the Garlic Mutant's hitboxes
#
#-------------------------------------------------------------#

function tta:entity/hitbox/garlic_mutant/repos_pre
execute if entity @s[tag=tta.entity.hitbox.garlic_mutant.eye] if score @e[type=marker,tag=tta.entity.garlic_mutant,limit=1,sort=nearest] monkeyhue.temp9 = @s monkeyhue.temp9 if block ~ ~ ~ #tta:airlike at @e[type=marker,tag=tta.entity.garlic_mutant,limit=1,sort=nearest] rotated as @e[type=marker,tag=tta.entity.garlic_mutant,limit=1,sort=nearest] run function tta:entity/hitbox/garlic_mutant/eye
execute if entity @s[tag=tta.entity.hitbox.garlic_mutant.body] if score @e[type=marker,tag=tta.entity.garlic_mutant,limit=1,sort=nearest] monkeyhue.temp9 = @s monkeyhue.temp9 run function tta:entity/hitbox/garlic_mutant/body

execute if entity @s[nbt={HurtTime:9s}] run function tta:entity/hitbox/garlic_mutant/hurt