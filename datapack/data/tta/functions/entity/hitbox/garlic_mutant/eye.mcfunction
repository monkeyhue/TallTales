#-------------------------------------------------------------#
#
# Controls Frogzilla's head hitbox
#
#-------------------------------------------------------------#

execute positioned ^ ^-4.6 ^-0.7 if score @e[type=marker,tag=tta.entity.garlic_mutant,limit=1,sort=nearest] monkeyhue.entity.AIState matches 3.. run teleport @s ^ ^4.6 ^0.7 ~ ~
execute positioned ^ ^-1 ^-3.7 if score @e[type=marker,tag=tta.entity.garlic_mutant,limit=1,sort=nearest] monkeyhue.entity.AIState matches 0 run teleport @s ^ ^1 ^3.7 ~ ~
execute positioned ^ ^-4 ^-1 if score @e[type=marker,tag=tta.entity.garlic_mutant,limit=1,sort=nearest] monkeyhue.entity.AIState matches 1..2 run teleport @s ^ ^4 ^1 ~ ~