#-------------------------------------------------------------#
#
# Controls projectile behavior
#
#-------------------------------------------------------------#

execute if entity @s[tag=tta.projectile.player] run function tta:entity/projectile/player
execute if entity @s[tag=tta.projectile.enemy] run function tta:entity/projectile/enemy
execute if entity @s[tag=tta.temp] run function tta:entity/projectile/temp

scoreboard players add @s monkeyhue.time1 1