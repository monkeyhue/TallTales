#-------------------------------------------------------------#
#
# Controls the Werewolf
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.temp2 matches 6 run function tta:entity/monster/werewolf/anim/3
execute unless score @s monkeyhue.temp2 matches 6 run scoreboard players reset @s monkeyhue.time4
execute unless score @s monkeyhue.temp2 matches 6 run scoreboard players set @s monkeyhue.temp2 6

scoreboard players add @s monkeyhue.time3 1

scoreboard players add @s monkeyhue.time4 1
execute if score @s monkeyhue.time4 matches 2 run function tta:entity/monster/werewolf/event/step
execute if score @s monkeyhue.time4 matches 8 run function tta:entity/monster/werewolf/event/step
execute if score @s monkeyhue.time4 matches 10 facing entity @e[distance=..16,type=#tta:entity_targets/werewolf,type=!player] eyes run teleport @s ~ ~ ~ ~180 0
execute if score @s monkeyhue.time4 matches 12.. run scoreboard players reset @s monkeyhue.time4

#Running

execute if entity @e[distance=0..32,type=item,tag=tta.temp.werewolfItem] facing entity @e[distance=0..32,type=item,tag=tta.temp.werewolfItem,limit=1,sort=nearest] feet run teleport @s ~ ~ ~ ~180 0

execute unless block ^ ^2 ^-1.5 #tta:werewolf_passable run scoreboard players set @s monkeyhue.entity.AIState 0
execute unless block ^ ^2 ^-0.5 #tta:werewolf_passable run scoreboard players set @s monkeyhue.entity.AIState 0

execute positioned ^ ^ ^-1 if entity @e[distance=..1.5,type=item,limit=1,tag=tta.temp.werewolfItem] run scoreboard players set @s monkeyhue.entity.AIState 11

execute positioned ^ ^ ^-2 unless entity @e[type=wither_skeleton,limit=1,tag=tta.entity.werewolf,distance=0..1.2] positioned ^ ^ ^2 if block ^ ^2 ^-1.5 #tta:werewolf_passable if block ^ ^2 ^-0.5 #tta:werewolf_passable run teleport @s ^ ^ ^-0.35
execute positioned ^ ^ ^-2 if entity @e[type=wither_skeleton,limit=1,tag=tta.entity.werewolf,distance=0..1.2] positioned ^ ^ ^2 if block ^ ^2 ^-1.5 #tta:werewolf_passable if block ^ ^2 ^-0.5 #tta:werewolf_passable run teleport @s ^ ^ ^-0.1 ~3 ~
execute positioned ^ ^ ^-1 unless block ~ ~0.25 ~ #tta:werewolf_passable positioned ~ ~0.25 ~ positioned ^ ^ ^1 run teleport @s ^ ^ ^-0.3 ~ 0
execute positioned ^ ^ ^-1 unless block ~ ~1 ~ #tta:werewolf_passable positioned ~ ~1 ~ positioned ^ ^ ^1 run teleport @s ^ ^ ^-0.15 ~ 0
execute positioned ^ ^ ^-1 if block ~ ~-0.25 ~ #tta:werewolf_passable if block ~ ~-0.1 ~ #tta:werewolf_passable positioned ~ ~-0.25 ~ positioned ^ ^ ^1 if block ~ ~-0.1 ~ #tta:werewolf_passable run teleport @s ^ ^ ^-0.3 ~ 0
execute positioned ^ ^ ^-1 if block ~ ~-1 ~ #tta:werewolf_passable if block ~ ~-0.1 ~ #tta:werewolf_passable positioned ~ ~-1 ~ positioned ^ ^ ^1 if block ~ ~-0.1 ~ #tta:werewolf_passable run teleport @s ^ ^ ^-0.15 ~ 0

execute positioned ^ ^1 ^-1.5 if entity @e[distance=..1.5,type=#tta:entity_targets/werewolf,limit=1] run scoreboard players set @s monkeyhue.entity.AIState 9

execute if entity @p[gamemode=!creative,gamemode=!spectator,distance=..64] if score @s monkeyhue.entity.customHealth matches ..180 run scoreboard players set @s monkeyhue.entity.AIState 3

execute if score @s monkeyhue.time3 matches 200.. run scoreboard players set @s monkeyhue.entity.AIState 2