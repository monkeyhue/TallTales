#-------------------------------------------------------------#
#
# Controls Frogzilla.
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.temp2 matches 17 store result storage tta:root temp.entityAIState.frogzilla int 1 run scoreboard players get @s monkeyhue.entity.AIState
execute unless score @s monkeyhue.temp2 matches 17 run scoreboard players reset @s monkeyhue.time3
execute unless score @s monkeyhue.temp2 matches 17 run tag @e[type=!#tta:inedible,tag=tta.temp.frogzillaTargeted] remove tta.temp.frogzillaTargeted
execute unless score @s monkeyhue.temp2 matches 17 run scoreboard players set @s monkeyhue.temp2 17

scoreboard players add @s monkeyhue.time3 1

execute if score @s monkeyhue.time3 matches 3 run playsound minecraft:tta.entity.frogzilla.roar hostile @a ~ ~ ~ 8 0.8 0.1

execute if score @s monkeyhue.time3 matches 58 run playsound minecraft:block.wet_grass.step hostile @a ~ ~ ~ 8 0.7
execute if score @s monkeyhue.time3 matches 58 run playsound minecraft:entity.hoglin.step hostile @a ~ ~ ~ 8 0.5

execute if score @s monkeyhue.time3 matches 74 positioned ~ ~12 ~ as @e[type=wither_skeleton,tag=tta.render.frogzilla,sort=nearest,limit=1,distance=..1] run function tta:entity/monster/frogzilla2/anim/13
execute if score @s monkeyhue.time3 matches 74 positioned ~ ~3 ~ run loot spawn ~ ~ ~ loot tta:entity/frogzilla
execute if score @s monkeyhue.time3 matches 74 positioned ~ ~3 ~ run spreadplayers ~ ~ 0.2 8 false @e[type=item,distance=0..3]

execute if score @s monkeyhue.time3 matches 100.. run bossbar remove tta:frogzilla2
execute if score @s monkeyhue.time3 matches 100.. positioned ^ ^ ^6 run particle poof ~ ~ ~ 5 0.25 5 0 300 force
execute if score @s monkeyhue.time3 matches 100.. positioned ^ ^ ^20 run particle poof ~ ~ ~ 3 0.25 3 0 150 force
execute if score @s monkeyhue.time3 matches 100.. as @e[tag=tta.entity.hitbox.frogzilla2,type=slime] run data merge entity @s {Size:0}
execute if score @s monkeyhue.time3 matches 100.. run teleport @e[tag=tta.entity.hitbox.frogzilla2] ~ -110 ~
execute if score @s monkeyhue.time3 matches 100.. run kill @e[tag=tta.entity.hitbox.frogzilla2]
execute if score @s monkeyhue.time3 matches 100.. run kill @s








