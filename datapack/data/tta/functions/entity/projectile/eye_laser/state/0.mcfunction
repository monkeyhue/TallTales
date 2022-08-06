#-------------------------------------------------------------#
#
# Controls an Oculuo Infernius
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.temp2 matches 0 run function tta:entity/projectile/eye_laser/anim/0
execute unless score @s monkeyhue.temp2 matches 0 run scoreboard players reset @s monkeyhue.time2
execute unless score @s monkeyhue.temp2 matches 0 run scoreboard players set @s monkeyhue.temp2 0

scoreboard players add @s monkeyhue.time2 1

execute if score @s monkeyhue.time2 matches 20 if entity @e[distance=0..40,tag=!tta.ignore,nbt=!{Invulnerable:1b},type=#tta:hostiles] run scoreboard players set @s monkeyhue.entity.AIState 1

execute if score @s monkeyhue.time2 matches 20.. run scoreboard players reset @s monkeyhue.time2