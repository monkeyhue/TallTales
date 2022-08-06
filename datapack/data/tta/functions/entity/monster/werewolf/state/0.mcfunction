#-------------------------------------------------------------#
#
# Controls the Werewolf
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.temp2 matches 0 run function tta:entity/monster/werewolf/anim/0
execute unless score @s monkeyhue.temp2 matches 0 run summon area_effect_cloud ~ ~ ~ {Radius:0f,Duration:1,Tags:["tta.temp.UUID"]}
execute unless score @s monkeyhue.temp2 matches 0 store result score @s monkeyhue.time3 run data get entity @e[type=area_effect_cloud,limit=1,tag=tta.temp.UUID,sort=nearest,distance=..1] UUID[0]
execute unless score @s monkeyhue.temp2 matches 0 run scoreboard players operation @s monkeyhue.time3 %= %200 monkeyhue.temp1
execute unless score @s monkeyhue.temp2 matches 0 run scoreboard players add @s monkeyhue.time3 100
execute unless score @s monkeyhue.temp2 matches 0 run scoreboard players set @s monkeyhue.temp2 0

scoreboard players remove @s monkeyhue.time3 1

execute if block ~ ~-0.25 ~ #tta:airlike run teleport @s ~ ~-0.25 ~

execute if score @s monkeyhue.time3 matches ..60 if entity @e[distance=0..32,type=#tta:entity_targets/werewolf,type=!player,limit=1] run scoreboard players set @s monkeyhue.entity.AIState 7
execute if score @s monkeyhue.time3 matches ..60 if entity @p[distance=0..22,limit=1,gamemode=!creative,gamemode=!spectator] run scoreboard players set @s monkeyhue.entity.AIState 7

execute if score @s monkeyhue.time3 matches ..0 run scoreboard players set @s monkeyhue.entity.AIState 2

