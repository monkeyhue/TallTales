stopsound @s * minecraft:entity.snowball.throw
playsound minecraft:entity.drowned.shoot player @a ~ ~ ~ 0.33 1.5
summon marker ~ ~ ~ {Tags:["tta.projectile","tta.projectile.player","tta.projectile.silver_stake","new"]}
data modify entity @s Item.tag.CustomModelData set value 6532004
data modify entity @e[type=marker,limit=1,sort=nearest,tag=tta.projectile.silver_stake] data.Item set from entity @s Item
data modify entity @e[type=marker,limit=1,sort=nearest,tag=tta.projectile.silver_stake] data.Owner set from entity @s Owner
tag @s add tta.projectile
tag @s add tta.projectile.player
tag @s add tta.projectile.silver_stake