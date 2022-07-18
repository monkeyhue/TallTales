#-------------------------------------------------------------#
#
# Prepares to erupt the slime geyser
#
#-------------------------------------------------------------#

execute unless score @s monkeyhue.block.var3 matches 2 run scoreboard players reset @s monkeyhue.time1
execute unless score @s monkeyhue.block.var3 matches 2 run setblock ~ ~ ~ bedrock
execute unless score @s monkeyhue.block.var3 matches 2 run scoreboard players set @s monkeyhue.block.var3 2

#Every Tick
particle minecraft:item minecraft:furnace{CustomModelData:6532007} ~ ~0.5 ~ 0.25 0 0.25 0.1 3 force

#2 Tick Timer
scoreboard players add @s monkeyhue.time2 1
execute if score @s monkeyhue.time2 matches 2.. run playsound minecraft:block.netherrack.step block @a ~ ~0.5 ~ 1 1
execute if score @s monkeyhue.time2 matches 2.. run scoreboard players reset @s monkeyhue.time2

#Tick Timer
scoreboard players add @s monkeyhue.time1 1
execute if score @s monkeyhue.time1 matches 1 run playsound minecraft:entity.creeper.primed block @a ~ ~0.5 ~ 1 1
execute if score @s monkeyhue.time1 matches 40.. run function tta:block/slime_geyser/event/erupt