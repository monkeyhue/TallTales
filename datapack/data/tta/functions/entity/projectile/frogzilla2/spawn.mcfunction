playsound minecraft:entity.player.burp hostile @a ~ ~ ~ 8 1
playsound minecraft:entity.ghast.shoot hostile @a ~ ~ ~ 8 1
summon armor_stand ^ ^3 ^0.1 {Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["tta.projectile","tta.projectile.enemy","tta.projectile.frogzilla2","new"]}
execute as @e[type=armor_stand,distance=0..16,limit=1,sort=nearest,tag=tta.projectile.frogzilla2,tag=new] at @s run function tta:entity/projectile/frogzilla2/init