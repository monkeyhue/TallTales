#-------------------------------------------------------------#
#
# Controls the Garlic Mutant.
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.temp2 matches 16 positioned ~ ~1 ~ as @e[type=wither_skeleton,tag=tta.render.garlic_mutant,sort=nearest,limit=1] run function tta:entity/monster/garlic_mutant/anim/16
execute unless score @s monkeyhue.temp2 matches 16 run scoreboard players reset @s monkeyhue.time3
execute unless score @s monkeyhue.temp2 matches 16 run tag @e[type=!#tta:inedible,tag=tta.temp.garlicTargeted] remove tta.temp.garlicTargeted
execute unless score @s monkeyhue.temp2 matches 16 run scoreboard players set @s monkeyhue.temp2 16

scoreboard players add @s monkeyhue.time3 1

execute if score @s monkeyhue.time3 matches 1 run playsound minecraft:entity.ravager.death hostile @a ~ ~ ~ 4 0.5
execute if score @s monkeyhue.time3 matches 22 run playsound minecraft:block.big_dripleaf.tilt_down hostile @a ~ ~ ~ 2 0.5
execute if score @s monkeyhue.time3 matches 29 positioned ~ ~1 ~ as @e[type=wither_skeleton,tag=tta.render.garlic_mutant,sort=nearest,limit=1] run function tta:entity/monster/garlic_mutant/anim/21

execute if score @s monkeyhue.time3 matches 80.. positioned ^ ^ ^ run particle poof ~ ~0.1 ~ 1.5 0.25 1.5 0 120 force
execute if score @s monkeyhue.time3 matches 80.. as @e[tag=tta.entity.hitbox.garlic_mutant,type=slime,limit=2,sort=nearest] run data merge entity @s {Size:0}
execute if score @s monkeyhue.time3 matches 80.. run teleport @e[tag=tta.entity.hitbox.garlic_mutant,limit=3,sort=nearest] ~ -110 ~
execute if score @s monkeyhue.time3 matches 80.. positioned ~ -110 ~ run kill @e[tag=tta.entity.hitbox.garlic_mutant,limit=3,sort=nearest]
execute if score @s monkeyhue.time3 matches 80.. run kill @s








