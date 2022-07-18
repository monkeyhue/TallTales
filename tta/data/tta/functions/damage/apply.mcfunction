# Initialize stuff
execute store result score @s monkeyhue.entity.health run data get entity @s Health 100

# Trigger AEC
execute at @s run summon area_effect_cloud ~ ~ ~ {Particle:"minecraft:block minecraft:air",ReapplicationDelay:0,Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:-0.5f,Duration:2,WaitTime:0,Age:-1,Tags:["tta.temp.getPlayerUUID"],Effects:[{Id:6b,Amplifier:127b,Duration:1},{Id:7b,Amplifier:127b,Duration:1}]}
execute at @s run data modify entity @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1,tag=tta.temp.getPlayerUUID] Owner set from entity @p UUID

# Armor and Armor Toughness Calculation
execute if score @s monkeyhue.damage.default matches 1.. run function tta:damage/apply_armor

# Resistance Effect Calculation
execute if score @s monkeyhue.damage.default matches 1.. run function tta:damage/apply_resist

# Determine if the thing's dead
execute if score @s[tag=!global.ignore,nbt=!{Invulnerable:1b}] monkeyhue.entity.health <= @s monkeyhue.damage run kill @s
execute if score @s[tag=!global.ignore,nbt=!{Invulnerable:1b}] monkeyhue.entity.health > @s monkeyhue.damage store result entity @s Health float 0.01 run scoreboard players operation @s monkeyhue.entity.health -= @s monkeyhue.damage

# Post effects and scoreboard reset
particle minecraft:damage_indicator ~ ~1 ~ 0.25 0.5 0.25 0.125 1
scoreboard players reset @s monkeyhue.damage
scoreboard players reset @s monkeyhue.damage.default
scoreboard players reset @s monkeyhue.damage.magic
scoreboard players reset @s monkeyhue.entity.health