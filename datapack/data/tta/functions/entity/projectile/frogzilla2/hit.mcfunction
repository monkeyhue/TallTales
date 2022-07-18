execute as @a[distance=0..3] run scoreboard players add @s smd.damage 16
execute as @a[distance=0..3] run function #smithed:core/pub/entity/damage/apply/projectile
playsound minecraft:block.fire.extinguish player @a ~ ~ ~ 1.5 1
playsound minecraft:entity.slime.hurt player @a ~ ~ ~ 1.5 0.5
effect give @a[distance=0..3] nausea 10 0
effect give @a[distance=0..3] poison 10 0
kill @s