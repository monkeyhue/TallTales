#-------------------------------------------------------------#
#
# Stomps a player or entity
#
#-------------------------------------------------------------#

scoreboard players add @s[type=!player] smithed.damage 22
scoreboard players add @s[type=player,gamemode=!creative,gamemode=!spectator] smithed.damage 16
function #smithed.damage:entity/apply/armor
execute if entity @s[type=player] run scoreboard players set @s monkeyhue.player.deathMessageID 1