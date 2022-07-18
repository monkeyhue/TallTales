#summon marker ~ ~ ~ {Tags:["tta.projectileBrain.eye_laser"]}
playsound minecraft:tta.item.eye_laser.shoot player @a ~ ~ ~ 1 1
playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 1
execute rotated as @e[type=armor_stand,limit=1,sort=nearest,tag=tta.projectile.eye_laser] run teleport @s ~ ~1.5 ~ ~180 ~
scoreboard players add @s monkeyhue.damage.default 2000
scoreboard players operation @s monkeyhue.damage.default += @p tta.player.magicDamage
#data modify entity @e[type=minecraft:marker,limit=1,sort=nearest,tag=tta.projectileBrain.eye_laser] data.Owner set from entity @p UUID
tag @s remove new