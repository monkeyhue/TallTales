#-------------------------------------------------------------#
#
# Controls the Werewolf
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.temp2 matches 5 run function tta:entity/monster/werewolf/anim/5
execute unless score @s monkeyhue.temp2 matches 5 run scoreboard players reset @s monkeyhue.time3
execute unless score @s monkeyhue.temp2 matches 5 run scoreboard players reset @s monkeyhue.time4
execute unless score @s monkeyhue.temp2 matches 5 run scoreboard players set @s monkeyhue.temp2 5

scoreboard players add @s monkeyhue.time3 1

scoreboard players add @s monkeyhue.time4 1
execute if score @s monkeyhue.time4 matches 3 run function tta:entity/monster/werewolf/event/step_run
execute if score @s monkeyhue.time4 matches 6 run function tta:entity/monster/werewolf/event/step_run
execute if score @s monkeyhue.time4 matches 9.. run scoreboard players reset @s monkeyhue.time4

#Running

execute facing entity @p[gamemode=!creative,gamemode=!spectator] eyes rotated ~ 0 run teleport @s ^ ^ ^0.45 ~180 0
execute facing entity @p[gamemode=!creative,gamemode=!spectator] eyes rotated ~ 0 positioned ^ ^ ^2 unless block ~ ~0.25 ~ #tta:werewolf_passable positioned ~ ~0.25 ~ positioned ^ ^ ^-2 run teleport @s ^ ^ ^0.45 ~180 0
execute facing entity @p[gamemode=!creative,gamemode=!spectator] eyes rotated ~ 0 positioned ^ ^ ^2 unless block ~ ~1 ~ #tta:werewolf_passable positioned ~ ~1 ~ positioned ^ ^ ^-2 run teleport @s ^ ^ ^0.2 ~180 0
execute facing entity @p[gamemode=!creative,gamemode=!spectator] eyes rotated ~ 0 positioned ^ ^ ^2 if block ~ ~-0.25 ~ #tta:werewolf_passable if block ~ ~-0.1 ~ #tta:werewolf_passable positioned ~ ~-0.25 ~ positioned ^ ^ ^-2 if block ~ ~-0.1 ~ #tta:werewolf_passable run teleport @s ^ ^ ^0.45 ~180 0
execute facing entity @p[gamemode=!creative,gamemode=!spectator] eyes rotated ~ 0 positioned ^ ^ ^2 if block ~ ~-1 ~ #tta:werewolf_passable if block ~ ~-0.1 ~ #tta:werewolf_passable positioned ~ ~-1 ~ positioned ^ ^ ^-2 if block ~ ~-0.1 ~ #tta:werewolf_passable run teleport @s ^ ^ ^0.2 ~180 0

execute positioned ^ ^1 ^-2 if entity @e[distance=..4,type=player,limit=1] run scoreboard players set @s monkeyhue.entity.AIState 12

execute if score @s monkeyhue.time3 matches 200.. run scoreboard players set @s monkeyhue.entity.AIState 12