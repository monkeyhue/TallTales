#-------------------------------------------------------------#
#
# Controls an Oculuo Infernius
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.temp2 matches 2 run scoreboard players reset @s monkeyhue.time2
execute unless score @s monkeyhue.temp2 matches 2 run scoreboard players set @s monkeyhue.temp2 2

scoreboard players add @s monkeyhue.time2 1

execute if score @s monkeyhue.time2 matches 1 facing entity @e[distance=0..40,tag=!global.ignore,nbt=!{Invulnerable:1b},type=#tta:hostiles,limit=1,sort=nearest] feet rotated ~180 ~ run teleport @s ~ ~ ~ ~ ~
execute if score @s monkeyhue.time2 matches 1 run function tta:entity/projectile/eye_laser/anim/2

execute if score @s monkeyhue.time2 matches 15 run function tta:entity/projectile/eye_laser/projectile/spawn

#Checks enchantment state to determine durability loss
execute if score @s monkeyhue.time2 matches 15 unless data entity @s ArmorItems[0].tag.Enchantments[{id:"minecraft:unbreaking"}] run scoreboard players remove @s monkeyhue.temp1 3
execute if score @s monkeyhue.time2 matches 15 if data entity @s ArmorItems[0].tag.Enchantments[{id:"minecraft:unbreaking",lvl:1s}] if predicate tta:rng/50 run scoreboard players remove @s monkeyhue.temp1 3
execute if score @s monkeyhue.time2 matches 15 if data entity @s ArmorItems[0].tag.Enchantments[{id:"minecraft:unbreaking",lvl:2s}] if predicate tta:rng/33 run scoreboard players remove @s monkeyhue.temp1 3
execute if score @s monkeyhue.time2 matches 15 if data entity @s ArmorItems[0].tag.Enchantments[{id:"minecraft:unbreaking",lvl:3s}] if predicate tta:rng/25 run scoreboard players remove @s monkeyhue.temp1 3
execute if score @s monkeyhue.time2 matches 15 if data entity @s ArmorItems[0].tag.Enchantments[{id:"minecraft:unbreaking",lvl:4s}] if predicate tta:rng/20 run scoreboard players remove @s monkeyhue.temp1 3

execute if score @s monkeyhue.time2 matches 36.. if entity @e[distance=0..40,tag=!global.ignore,nbt=!{Invulnerable:1b},type=#tta:hostiles,limit=1] run scoreboard players set @s monkeyhue.entity.AIState 1
execute if score @s monkeyhue.time2 matches 36.. unless entity @e[distance=0..40,tag=!global.ignore,nbt=!{Invulnerable:1b},type=#tta:hostiles,limit=1] run scoreboard players set @s monkeyhue.entity.AIState 0