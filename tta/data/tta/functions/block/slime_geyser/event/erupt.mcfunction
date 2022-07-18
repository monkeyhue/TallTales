#-------------------------------------------------------------#
#
# Erupts the slime geyser
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.block.var3 matches 3 run scoreboard players reset @s monkeyhue.time2
execute unless score @s monkeyhue.block.var3 matches 3 run scoreboard players set @s monkeyhue.block.var3 3

#Every Tick
particle minecraft:item minecraft:furnace{CustomModelData:6532007} ~ ~0.5 ~ 0.25 0 0.25 0.05 3 normal
particle minecraft:item minecraft:furnace{CustomModelData:6532007} ~ ~0.5 ~ 0.25 0 0.25 0.2 1 normal

particle minecraft:item minecraft:clock{CustomModelData:6532013} ~ ~0.5 ~ ~ ~1000000 ~ 0.000001 0 force
particle minecraft:item minecraft:clock{CustomModelData:6532013} ~ ~0.5 ~ ~60000 ~1000000 ~ 0.0000008 0 force
particle minecraft:item minecraft:clock{CustomModelData:6532013} ~ ~0.5 ~ ~-60000 ~1000000 ~ 0.0000008 0 force
particle minecraft:item minecraft:clock{CustomModelData:6532013} ~ ~0.5 ~ ~ ~1000000 ~60000 0.0000008 0 force
particle minecraft:item minecraft:clock{CustomModelData:6532013} ~ ~0.5 ~ ~ ~1000000 ~-60000 0.0000008 0 force

#5 Tick Timer
scoreboard players add @s monkeyhue.time2 1
execute if score @s monkeyhue.time2 matches 5.. if score @s monkeyhue.block.var2 matches 1.. run function tta:block/slime_geyser/event/item
execute if score @s monkeyhue.time2 matches 5.. positioned ~ ~1.5 ~ run effect give @e[distance=0..3,type=!#tta:not_mobs_players,limit=5,sort=nearest,tag=!global.ignore] poison 10 2
execute if score @s monkeyhue.time2 matches 5.. run playsound minecraft:block.fire.extinguish block @a ~ ~ ~ 0.5 1
execute if score @s monkeyhue.time2 matches 5.. run scoreboard players reset @s monkeyhue.time2

#Tick Timer
scoreboard players add @s monkeyhue.time1 1
execute if score @s monkeyhue.time1 matches 41 run summon creeper ~ ~0.5 ~ {Invulnerable:1b,DeathLootTable:"-",NoAI:1b,ExplosionRadius:-3b,Fuse:0,ignited:1b,CustomName:'{"text":"Slime Geyser"}',Tags:["global.ignore"]}
execute if score @s monkeyhue.time1 matches 100.. run scoreboard players reset @s monkeyhue.block.var1
execute if score @s monkeyhue.time1 matches 100.. run scoreboard players reset @s monkeyhue.block.var2
execute if score @s monkeyhue.time1 matches 100.. run scoreboard players reset @s monkeyhue.block.var3
execute if score @s monkeyhue.time1 matches 100.. run setblock ~ ~ ~ obsidian
execute if score @s monkeyhue.time1 matches 100.. run scoreboard players reset @s monkeyhue.time1

