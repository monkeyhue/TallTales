#-------------------------------------------------------------#
#
# Controls Frogzilla's hitboxes
#
#-------------------------------------------------------------#

execute if entity @s[tag=tta.entity.hitbox.frogzilla2.head] run function tta:entity/hitbox/frogzilla2/head
execute if entity @s[tag=tta.entity.hitbox.frogzilla2.chest] run function tta:entity/hitbox/frogzilla2/chest
execute if entity @s[tag=tta.entity.hitbox.frogzilla2.belly] run function tta:entity/hitbox/frogzilla2/belly
execute if entity @s[tag=tta.entity.hitbox.frogzilla2.tail1] run function tta:entity/hitbox/frogzilla2/tail1
execute if entity @s[tag=tta.entity.hitbox.frogzilla2.tail2] run function tta:entity/hitbox/frogzilla2/tail2
execute if entity @s[tag=tta.entity.hitbox.frogzilla2.eye.left] run function tta:entity/hitbox/frogzilla2/eye_left
execute if entity @s[tag=tta.entity.hitbox.frogzilla2.eye.right] run function tta:entity/hitbox/frogzilla2/eye_right

execute if entity @s[nbt={HurtTime:9s}] run function tta:entity/hitbox/frogzilla2/hurt
execute if entity @s[tag=tta.render.frogzilla] unless predicate tta:nbt/leashed run function tta:entity/hitbox/frogzilla2/leash