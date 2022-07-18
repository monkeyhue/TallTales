playsound minecraft:entity.warden.attack_impact player @a ~ ~ ~ 2 2
playsound minecraft:entity.leash_knot.break player @a ~ ~ ~ 2 0.5
particle explosion ~ ~1.5 ~ 0 0 0 1 1
particle dust_color_transition 0.620 0.000 0.000 2 0.898 0.208 0.000 ~ ~1.25 ~ 0.5 0.5 0.5 1 15 force
particle dust_color_transition 0.620 0.000 0.000 3 0.898 0.208 0.000 ~ ~1.25 ~ 0.5 0.5 0.5 1 5 force

kill @s
kill @e[type=marker,limit=1,sort=nearest,tag=tta.projectileBrain.eye_laser]
