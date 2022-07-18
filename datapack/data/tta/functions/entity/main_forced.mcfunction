#-------------------------------------------------------------#
#
# Controls all entity behavior each tick.
#
#-------------------------------------------------------------#

execute if entity @s[tag=tta.entity.hitbox] run function tta:entity/hitbox/main
execute if entity @s[tag=tta.entity.boss] run function tta:entity/monster/main