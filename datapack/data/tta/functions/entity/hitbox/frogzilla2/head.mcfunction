#-------------------------------------------------------------#
#
# Controls Frogzilla's head hitbox
#
#-------------------------------------------------------------#

execute at @e[type=marker,tag=tta.entity.frogzilla2,limit=1,sort=nearest] unless score @e[type=marker,tag=tta.entity.frogzilla2,limit=1,sort=nearest] monkeyhue.entity.AIState matches 22..23 rotated as @e[type=marker,tag=tta.entity.frogzilla2,limit=1,sort=nearest] run teleport @s ^ ^15.8 ^2 ~ ~

execute at @e[type=marker,tag=tta.entity.frogzilla2,limit=1,sort=nearest] if score @e[type=marker,tag=tta.entity.frogzilla2,limit=1,sort=nearest] monkeyhue.entity.AIState matches 22..23 run teleport @s ^ ^0 ^21.5 ~ ~