#data modify storage tta:root temp.UUIDComparisonA set from entity @s data.Owner

#execute as @e[type=!#tta:not_mobs,distance=0..1.5,limit=1,sort=nearest,tag=!global.ignore,nbt=!{Invulnerable:1b}] run function tta:entity/projectile/eye_laser/projectile/hit_mob

#data remove storage tta:root temp.UUIDComparisonA
#data remove storage tta:root temp.UUIDComparisonB