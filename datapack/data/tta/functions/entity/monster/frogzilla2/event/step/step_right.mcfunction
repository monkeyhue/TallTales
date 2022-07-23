#-------------------------------------------------------------#
#
# Occurs when Frogzilla steps with their left foot
#
#-------------------------------------------------------------#

playsound minecraft:block.wet_grass.step hostile @a ~ ~ ~ 8 0.7
playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 8 0.5

execute at @s positioned ^-3 ^ ^ as @e[type=!#tta:not_mobs_players,sort=nearest,limit=10,distance=..6,tag=!tta.entity.hitbox.frogzilla2] run function tta:entity/monster/frogzilla2/event/stomped

execute at @s if score @s monkeyhue.temp6 matches 1.. positioned ^-4 ^ ^ run function tta:entity/monster/frogzilla2/event/break_stuff
execute at @s if score @s monkeyhue.temp6 matches 1.. positioned ^-4 ^1 ^ run function tta:entity/monster/frogzilla2/event/break_stuff
execute at @s if score @s monkeyhue.temp6 matches 1.. positioned ^-4 ^2 ^ run function tta:entity/monster/frogzilla2/event/break_stuff
execute at @s if score @s monkeyhue.temp6 matches 1.. positioned ^-4 ^3 ^ run function tta:entity/monster/frogzilla2/event/break_stuff
execute at @s if score @s monkeyhue.temp6 matches 1.. positioned ^-4 ^4 ^ run function tta:entity/monster/frogzilla2/event/break_stuff
execute at @s if score @s monkeyhue.temp6 matches 1.. positioned ^-4 ^5 ^ run function tta:entity/monster/frogzilla2/event/break_stuff
execute at @s if score @s monkeyhue.temp6 matches 1.. positioned ^-4 ^6 ^ run function tta:entity/monster/frogzilla2/event/break_stuff
execute at @s if score @s monkeyhue.temp6 matches 1.. positioned ^-4 ^7 ^ run function tta:entity/monster/frogzilla2/event/break_stuff
execute at @s if score @s monkeyhue.temp6 matches 1.. positioned ^-4 ^8 ^ run function tta:entity/monster/frogzilla2/event/break_stuff

execute unless score @s monkeyhue.time6 matches 1.. positioned ^ ^15 ^12 facing ^ ^3 ^12 run function tta:entity/monster/frogzilla2/event/tongue/raycast/4
execute unless score @s monkeyhue.time6 matches 1.. positioned ^ ^10.4 ^12 facing ^ ^0.6 ^12 run function tta:entity/monster/frogzilla2/event/tongue/raycast/3
execute unless score @s monkeyhue.time6 matches 1.. positioned ^ ^10.4 ^12 facing ^ ^-1.7 ^12 run function tta:entity/monster/frogzilla2/event/tongue/raycast/2
execute unless score @s monkeyhue.time6 matches 1.. positioned ^ ^10.4 ^12 facing ^ ^-3.5 ^12 run function tta:entity/monster/frogzilla2/event/tongue/raycast/1
execute unless score @s monkeyhue.time6 matches 1.. positioned ^ ^16 ^6 facing ^ ^-10.6 ^6 run function tta:entity/monster/frogzilla2/event/tongue/raycast/5
execute unless score @s monkeyhue.time6 matches 1.. positioned ^ ^17 ^6 facing ^ ^-5.7 ^6 run function tta:entity/monster/frogzilla2/event/tongue/raycast/6

execute at @a[distance=100..,nbt={OnGround:1b}] run summon area_effect_cloud ~ ~ ~ {Particle:"minecraft:block minecraft:air",ReapplicationDelay:0,Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:-0.5f,Duration:2,Age:-1,WaitTime:0,Effects:[{Id:25b,Amplifier:15b,Duration:2,ShowParticles:0b}]}

execute if score @s monkeyhue.entity.AIState matches 11 positioned ^ ^3 ^10 if entity @a[distance=0..8] run scoreboard players set @s monkeyhue.entity.AIState 21 