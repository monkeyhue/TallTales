function tta:damage/apply

#execute store result score @s monkeyhue.temp2 run data get entity @s Health
#execute if score @s monkeyhue.temp2 matches ..0 run scoreboard players set @s monkeyhue.temp3 1
#execute as @a[distance=..100] run function tta:entity/player/event/compare_uuid/eye_laser
#scoreboard players reset @s monkeyhue.temp3

playsound minecraft:entity.warden.attack_impact player @a ~ ~ ~ 2 2
playsound minecraft:entity.leash_knot.break player @a ~ ~ ~ 2 0.5
