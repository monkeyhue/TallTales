scoreboard players add @s tta.player.manicEyesPlaced 1
summon armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["tta.projectile","tta.projectile.player","tta.projectile.eye_manic","new"],ArmorItems:[{},{},{},{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:6532033}}]}

execute as @e[type=armor_stand,distance=0..16,limit=1,sort=nearest,tag=tta.projectile.eye_manic,tag=new] at @s run function tta:entity/projectile/eye_laser_manic/init
item modify entity @s weapon.mainhand tta:clear