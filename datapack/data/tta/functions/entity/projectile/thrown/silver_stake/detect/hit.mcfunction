execute as @e[sort=nearest,limit=1,type=!#tta:not_mobs,distance=0..8] if predicate tta:nbt/hurttime_10s run function tta:entity/projectile/thrown/silver_stake/damage
playsound minecraft:item.shield.break player @a ~ ~ ~ 0.33 2
playsound minecraft:item.trident.hit_ground player @a ~ ~ ~ 0.8 2
particle item snowball{CustomModelData:6532003} ~ ~ ~ 0.05 0.05 0.05 0.1 20
execute if predicate tta:rng/75 run function tta:entity/projectile/thrown/silver_stake/detect/drop_item
kill @s