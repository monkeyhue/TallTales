#NOTE: I turned off UUID detection for this weapon as it can no longer hit players. Stuff won't be removed, but just commented out.

scoreboard players operation @e[type=!#tta:not_mobs,distance=0..2.5,limit=3,sort=nearest,tag=!tta.ignore,nbt=!{Invulnerable:1b}] monkeyhue.damage.default += @s monkeyhue.damage.default
particle explosion ~ ~1.5 ~ 0 0 0 1 1
particle dust_color_transition 0.620 0.000 0.000 2 0.898 0.208 0.000 ~ ~1.25 ~ 0.5 0.5 0.5 1 15 force
particle dust_color_transition 0.620 0.000 0.000 3 0.898 0.208 0.000 ~ ~1.25 ~ 0.5 0.5 0.5 1 5 force

execute as @e[type=!#tta:not_mobs_players,distance=0..2.5,limit=3,sort=nearest,tag=!tta.ignore,nbt=!{Invulnerable:1b}] at @s run function tta:entity/projectile/eye_laser/projectile/hit_mob
#execute as @e[type=marker,limit=1,sort=nearest,tag=tta.projectileBrain.eye_laser] run function tta:entity/projectile/eye_laser/projectile/hit_marker

kill @s