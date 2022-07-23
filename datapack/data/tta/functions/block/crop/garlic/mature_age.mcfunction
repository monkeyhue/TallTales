#-------------------------------------------------------------#
#
# Maintains the plant's age at maturity to ensure a sizeable
# hitbox and no stem attaching.
#
#-------------------------------------------------------------#

execute unless block ~ ~ ~ wheat[age=2] unless block ~ ~ ~ wheat[age=0] unless block ~ ~ ~ wheat[age=1] run give @p[gamemode=!creative,gamemode=!spectator,distance=0..6] bone_meal 1
execute unless block ~ ~ ~ wheat[age=1] run setblock ~ ~ ~ wheat[age=1]

scoreboard players set @s monkeyhue.block.var1 5
scoreboard players add @s monkeyhue.time1 1