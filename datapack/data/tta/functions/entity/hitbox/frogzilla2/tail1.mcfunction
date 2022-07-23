#-------------------------------------------------------------#
#
# Controls Frogzilla's head hitbox
#
#-------------------------------------------------------------#

execute at @e[type=marker,tag=tta.entity.frogzilla2,limit=1,sort=nearest] unless score @e[type=marker,tag=tta.entity.frogzilla2,limit=1,sort=nearest] monkeyhue.entity.AIState matches 22..23 rotated as @e[type=marker,tag=tta.entity.frogzilla2,limit=1,sort=nearest] run teleport @s ^ ^4 ^-7 ~ ~

execute at @e[type=marker,tag=tta.entity.frogzilla2,limit=1,sort=nearest] if score @e[type=marker,tag=tta.entity.frogzilla2,limit=1,sort=nearest] monkeyhue.entity.AIState matches 22..23 run teleport @s ^ ^0 ^7 ~ ~

execute if score @e[type=marker,tag=tta.entity.frogzilla2,limit=1,sort=nearest] monkeyhue.entity.AIState matches 22..23 if entity @s[nbt={Size:12}] run data modify entity @s Size set value 16
execute unless score @e[type=marker,tag=tta.entity.frogzilla2,limit=1,sort=nearest] monkeyhue.entity.AIState matches 22..23 unless entity @s[nbt={Size:12}] run data modify entity @s Size set value 12