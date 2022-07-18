#-------------------------------------------------------------#
#
# Kills a mob when eaten by Frogzilla
#
#-------------------------------------------------------------#


tag @s remove tta.temp.frogzillaTargeted
tag @s remove tta.temp.eatingByFrogzilla

scoreboard players add @e[type=marker,tag=tta.entity.frogzilla2,limit=1,sort=nearest] monkeyhue.entity.customHealth 10

teleport @s ~ -110 ~
kill @s
