summon marker ~ ~ ~ {Tags:["tta.projectile","tta.projectile.player","tta.projectile.wooden_stake","new"]}
data modify entity @s Item.tag.CustomModelData set value 6532002
data modify entity @e[type=marker,limit=1,sort=nearest,tag=tta.projectile.wooden_stake] data.Item set from entity @s Item
data modify entity @e[type=marker,limit=1,sort=nearest,tag=tta.projectile.wooden_stake] data.Owner set from entity @s Owner
tag @s add tta.projectile
tag @s add tta.projectile.player
tag @s add tta.projectile.wooden_stake