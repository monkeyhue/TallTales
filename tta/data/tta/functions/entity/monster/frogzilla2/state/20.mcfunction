#-------------------------------------------------------------#
#
# Despawns
#
#-------------------------------------------------------------#
scoreboard players reset @s

bossbar remove tta:frogzilla2
execute as @e[tag=tta.entity.hitbox.frogzilla2,type=slime] run data merge entity @s {Size:0}
teleport @e[tag=tta.entity.hitbox.frogzilla2] ~ -110 ~
kill @e[tag=tta.entity.hitbox.frogzilla2]
kill @s








