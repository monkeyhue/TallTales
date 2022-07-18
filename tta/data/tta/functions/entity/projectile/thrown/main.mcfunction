#-------------------------------------------------------------#
#
# Controls projectile behavior
#
#-------------------------------------------------------------#

execute if entity @s[tag=tta.projectile.wooden_stake] run function tta:entity/projectile/thrown/wooden_stake/main
execute if entity @s[tag=tta.projectile.silver_stake] run function tta:entity/projectile/thrown/silver_stake/main

scoreboard players add @s monkeyhue.time1 1