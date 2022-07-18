#-------------------------------------------------------------#
#
# Occurs when Frogzilla targets something (State 3)
#
#-------------------------------------------------------------#

execute unless entity @s[type=player] run tag @s add tta.temp.frogzillaTargeted
execute if entity @s[type=player] run tag @s[gamemode=!creative,gamemode=!spectator] add tta.temp.frogzillaTargeted

scoreboard players add @e[type=marker,limit=1,tag=tta.entity.frogzilla2,sort=nearest] monkeyhue.temp3 1