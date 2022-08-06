#-------------------------------------------------------------#
#
# Controls Frogzilla.
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.temp2 matches 21 store result storage tta:root temp.entityAIState.frogzilla int 1 run scoreboard players get @s monkeyhue.entity.AIState
execute unless score @s monkeyhue.temp2 matches 21 run scoreboard players reset @s monkeyhue.time3
execute unless score @s monkeyhue.temp2 matches 21 run scoreboard players set @s monkeyhue.temp2 21

scoreboard players add @s monkeyhue.time3 1

execute if score @s monkeyhue.time3 matches 28 run playsound minecraft:block.wet_grass.step hostile @a ~ ~ ~ 8 0.7
execute if score @s monkeyhue.time3 matches 28 run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 8 0.5
execute if score @s monkeyhue.time3 matches 28 positioned ^ ^3 ^10 run scoreboard players set @e[type=player,distance=..8] monkeyhue.player.deathMessageID 11
execute if score @s monkeyhue.time3 matches 28 positioned ^ ^3 ^10 as @e[type=!#tta:not_mobs_players,distance=0..8] run scoreboard players set @s smithed.damage 40
execute if score @s monkeyhue.time3 matches 28 positioned ^ ^3 ^10 as @e[type=!#tta:not_mobs_players,distance=0..8] run function #smithed.damage:entity/apply/armor

execute if score @s monkeyhue.time3 matches 28 at @a[distance=..40,nbt={OnGround:1b}] run summon area_effect_cloud ~ ~ ~ {Particle:"minecraft:block minecraft:air",ReapplicationDelay:0,Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:-0.5f,Duration:2,Age:-1,WaitTime:0,Effects:[{Id:25b,Amplifier:40b,Duration:2,ShowParticles:0b}]}
execute if score @s monkeyhue.time3 matches 28 at @a[distance=40..100,nbt={OnGround:1b}] run summon area_effect_cloud ~ ~ ~ {Particle:"minecraft:block minecraft:air",ReapplicationDelay:0,Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:-0.5f,Duration:2,Age:-1,WaitTime:0,Effects:[{Id:25b,Amplifier:30b,Duration:2,ShowParticles:0b}]}

execute if score @s monkeyhue.time3 matches 40.. run scoreboard players set @s monkeyhue.entity.AIState 22

