summon armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["tta.projectile","tta.projectile.player","tta.projectile.eye_manic.beam","new"]}

execute as @e[limit=1,sort=nearest,tag=tta.projectile.eye_manic.beam,tag=new] at @s run function tta:entity/projectile/eye_laser_manic/projectile/init