#-------------------------------------------------------------#
#
# Controls Frogzilla.
#
#-------------------------------------------------------------#

execute unless score @s monkeyhue.entity.customHealth matches 6000.. run scoreboard players add @s monkeyhue.entity.customHealth 3
execute if score @s monkeyhue.entity.customHealth matches 6001.. run scoreboard players set @s monkeyhue.entity.customHealth 6000
execute store result score @s monkeyhue.temp6 run gamerule mobGriefing
execute store result score @s monkeyhue.temp7 run difficulty
execute if score @s monkeyhue.temp7 matches 0 run bossbar remove tta:frogzilla2
execute if score @s monkeyhue.temp7 matches 0 run kill @s

#Despawn
execute store result score @s monkeyhue.time8 run time query gametime
execute if score @s monkeyhue.time8 > @s monkeyhue.time9 unless entity @p[distance=..128,gamemode=!spectator] run scoreboard players set @s monkeyhue.entity.AIState 20