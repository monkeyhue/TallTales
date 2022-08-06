#-------------------------------------------------------------#
#
# Controls the Werewolf
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.temp2 matches 2 run function tta:entity/monster/werewolf/anim/2
execute unless score @s monkeyhue.temp2 matches 2 run summon area_effect_cloud ~ ~ ~ {Radius:0f,Duration:1,Tags:["tta.temp.UUID"]}
execute unless score @s monkeyhue.temp2 matches 2 store result score @s monkeyhue.time3 run data get entity @e[type=area_effect_cloud,limit=1,tag=tta.temp.UUID,sort=nearest,distance=..1] UUID[0]
execute unless score @s monkeyhue.temp2 matches 2 run scoreboard players operation @s monkeyhue.time3 %= %100 monkeyhue.temp1
execute unless score @s monkeyhue.temp2 matches 2 run scoreboard players add @s monkeyhue.time3 60
execute unless score @s monkeyhue.temp2 matches 2 store result score @s monkeyhue.temp3 run data get entity @e[type=area_effect_cloud,limit=1,tag=tta.temp.UUID,sort=nearest,distance=..1] UUID[1]
execute unless score @s monkeyhue.temp2 matches 2 run scoreboard players operation @s monkeyhue.temp3 %= %360 monkeyhue.temp1
execute unless score @s monkeyhue.temp2 matches 2 store result entity @s Rotation[0] float 1.0 run scoreboard players get @s monkeyhue.temp3
execute unless score @s monkeyhue.temp2 matches 2 run scoreboard players reset @s monkeyhue.temp3
execute unless score @s monkeyhue.temp2 matches 2 run scoreboard players set @s monkeyhue.temp2 2

scoreboard players remove @s monkeyhue.time3 1 

scoreboard players add @s monkeyhue.time4 1
execute if score @s monkeyhue.time4 matches 8 run function tta:entity/monster/werewolf/event/step
execute if score @s monkeyhue.time4 matches 23 run function tta:entity/monster/werewolf/event/step
execute if score @s monkeyhue.time4 matches 30.. run scoreboard players reset @s monkeyhue.time4

execute unless block ^ ^2 ^-1.5 #tta:werewolf_passable run scoreboard players set @s monkeyhue.entity.AIState 0
execute unless block ^ ^2 ^-0.5 #tta:werewolf_passable run scoreboard players set @s monkeyhue.entity.AIState 0

#Walking

execute if block ^ ^2 ^-1.5 #tta:werewolf_passable if block ^ ^2 ^-0.5 #tta:werewolf_passable run teleport @s ^ ^ ^-0.08
execute positioned ^ ^ ^-1 unless block ~ ~0.25 ~ #tta:werewolf_passable positioned ~ ~0.25 ~ positioned ^ ^ ^1 run teleport @s ^ ^ ^-0.08 ~ 0
execute positioned ^ ^ ^-1 unless block ~ ~1 ~ #tta:werewolf_passable positioned ~ ~1 ~ positioned ^ ^ ^1 run teleport @s ^ ^ ^-0.04 ~ 0
execute positioned ^ ^ ^-1 if block ~ ~-0.25 ~ #tta:werewolf_passable if block ~ ~-0.1 ~ #tta:werewolf_passable positioned ~ ~-0.25 ~ positioned ^ ^ ^1 if block ~ ~-0.1 ~ #tta:werewolf_passable run teleport @s ^ ^ ^-0.08 ~ 0
execute positioned ^ ^ ^-1 if block ~ ~-1 ~ #tta:werewolf_passable if block ~ ~-0.1 ~ #tta:werewolf_passable positioned ~ ~-1 ~ positioned ^ ^ ^1 if block ~ ~-0.1 ~ #tta:werewolf_passable run teleport @s ^ ^ ^-0.04 ~ 0

execute if entity @e[distance=0..32,type=item,tag=tta.temp.werewolfItem] run scoreboard players set @s monkeyhue.entity.AIState 7

execute if score @s monkeyhue.time3 matches ..0 run scoreboard players set @s monkeyhue.entity.AIState 0