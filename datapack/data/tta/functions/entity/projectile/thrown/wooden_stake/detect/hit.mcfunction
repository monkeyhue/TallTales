execute as @e[sort=nearest,limit=1,type=!#tta:not_mobs,distance=0..8] if predicate tta:nbt/hurttime_10s run function tta:entity/projectile/thrown/wooden_stake/damage
playsound minecraft:item.shield.block master @a ~ ~ ~ 0.33 2
particle item snowball{CustomModelData:6532001} ~ ~ ~ 0.05 0.05 0.05 0.1 20
execute if predicate tta:rng/33 run function tta:entity/projectile/thrown/wooden_stake/detect/drop_item
kill @s