execute facing entity @r[distance=0..200] feet run teleport @s ~ ~ ~ ~ ~
data modify entity @s Rotation[0] set from entity @e[type=armor_stand,distance=..32,tag=tta.projectile.frogzilla3,limit=1,sort=nearest] Rotation[0]
tag @s remove new