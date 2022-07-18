#-------------------------------------------------------------#
#
# Kills a mob when eaten by the Garlic Mutant
#
#-------------------------------------------------------------#

scoreboard players add @e[type=marker,tag=tta.aj.garlic_mutant.root,limit=1] monkeyhue.entity.customHealth 6
scoreboard players add @s monkeyhue.damage.default 2000
function tta:damage/apply