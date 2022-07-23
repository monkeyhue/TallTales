#-------------------------------------------------------------#
#
# Kills the player when eaten by Frogzilla
#
#-------------------------------------------------------------#

scoreboard players set @s monkeyhue.player.deathMessageID 2
scoreboard players add @s smithed.damage 50
function #smithed.damage:entity/apply/armor

tag @s remove tta.temp.frogzillaTargeted
tag @s remove tta.temp.eatingByFrogzilla
