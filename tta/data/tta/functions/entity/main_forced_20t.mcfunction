#-------------------------------------------------------------#
#
# Controls all entity behavior every second.
#
#-------------------------------------------------------------#

execute if entity @s[tag=tta.entity.hitbox] run function tta:entity/hitbox/main_20t
execute if entity @s[tag=tta.entity.boss] run function tta:entity/monster/main_20t