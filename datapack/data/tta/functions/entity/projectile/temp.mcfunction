#---------------- tta:entity/projectile/player ----------------#
#
# Main area for player-made projectiles.
#
#-------------------------------------------------------------#

execute if entity @s[tag=tta.temp.getPlayerName] if score @s monkeyhue.time1 matches 1.. run kill @s
execute if entity @s[tag=tta.temp.frogzillaSpawner] run function tta:entity/projectile/spawner/frogzilla