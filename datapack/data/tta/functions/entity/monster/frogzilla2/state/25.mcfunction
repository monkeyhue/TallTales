#-------------------------------------------------------------#
#
# Controls Frogzilla.
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.temp2 matches 25 store result storage tta:root temp.entityAIState.frogzilla int 1 run scoreboard players get @s monkeyhue.entity.AIState
execute unless score @s monkeyhue.temp2 matches 25 run scoreboard players reset @s monkeyhue.time3
execute unless score @s monkeyhue.temp2 matches 25 run scoreboard players reset @s monkeyhue.time4
execute unless score @s monkeyhue.temp2 matches 25 run scoreboard players set @s monkeyhue.temp2 25

scoreboard players add @s monkeyhue.time3 1

execute if score @s monkeyhue.time3 matches 20 as @r[distance=12..190,gamemode=!creative,gamemode=!spectator] run function tta:entity/monster/frogzilla2/event/target
execute unless score @s monkeyhue.temp3 matches 1.. if score @s monkeyhue.time3 matches 22 as @e[distance=12..190,type=#tta:frogzilla_preferred,type=!player,sort=random,limit=1,tag=!tta.ignore,tag=!smithed.strict] run function tta:entity/monster/frogzilla2/event/target
execute unless score @s monkeyhue.temp3 matches 1.. if score @s monkeyhue.time3 matches 24 as @e[distance=24..64,type=!#tta:inedible,type=!#tta:explosive,type=!glow_squid,type=!squid,sort=random,limit=1,tag=!tta.ignore,tag=!smithed.strict] run function tta:entity/monster/frogzilla2/event/target

execute if score @s monkeyhue.time3 matches 25 run playsound minecraft:block.wet_grass.step hostile @a ~ ~ ~ 8 0.7
execute if score @s monkeyhue.time3 matches 25 run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 8 0.5
execute if score @s monkeyhue.time3 matches 25 at @a[distance=..40,nbt={OnGround:1b}] run summon area_effect_cloud ~ ~ ~ {Particle:"minecraft:block minecraft:air",ReapplicationDelay:0,Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:-0.5f,Duration:2,Age:-1,WaitTime:0,Effects:[{Id:25b,Amplifier:40b,Duration:2,ShowParticles:0b}]}
execute if score @s monkeyhue.time3 matches 25 at @a[distance=40..100,nbt={OnGround:1b}] run summon area_effect_cloud ~ ~ ~ {Particle:"minecraft:block minecraft:air",ReapplicationDelay:0,Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:-0.5f,Duration:2,Age:-1,WaitTime:0,Effects:[{Id:25b,Amplifier:30b,Duration:2,ShowParticles:0b}]}
execute if score @s monkeyhue.time3 matches 29 run playsound minecraft:tta.entity.frogzilla.roar hostile @a ~ ~ ~ 8 1 0.1

execute if score @s monkeyhue.time3 matches 100.. unless score @s monkeyhue.temp9 matches 1.. run scoreboard players set @s monkeyhue.entity.AIState 11