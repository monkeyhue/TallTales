#-------------------------------------------------------------#
#
# Puts incoming damage through an armor calculation.
#
#-------------------------------------------------------------#

# Variables used:
# %4
# %5
# %800
# %25

# Get Armor Values
#-------------------------------------------------------------#
execute store result score @s monkeyhue.temp1 run scoreboard players get @s monkeyhue.damage.default
execute store result score @s monkeyhue.temp2 run attribute @s minecraft:generic.armor get 100
execute store result score @s monkeyhue.temp3 run attribute @s minecraft:generic.armor_toughness get 100
execute store result score @s monkeyhue.temp4 run attribute @s minecraft:generic.armor get 100
scoreboard players set @s monkeyhue.temp5 100
execute store result score @s monkeyhue.temp6 run scoreboard players get @s monkeyhue.damage.default

# First, calculate armor toughness: (4 * damage) / (8 * toughness)
#-------------------------------------------------------------#
scoreboard players operation @s monkeyhue.temp1 *= %400 monkeyhue.temp1
scoreboard players operation @s monkeyhue.temp3 += %800 monkeyhue.temp1
scoreboard players operation @s monkeyhue.temp1 /= @s monkeyhue.temp3

# Compare values and get the higher one: 1 - ((armor / 5) > (armor - monkeyhue.temp1)) / 25 
#-------------------------------------------------------------#
scoreboard players operation @s monkeyhue.temp2 -= @s monkeyhue.temp1
scoreboard players operation @s monkeyhue.temp4 /= %500 monkeyhue.temp1
scoreboard players operation @s monkeyhue.temp2 > @s monkeyhue.temp4
scoreboard players operation @s monkeyhue.temp2 /= %25 monkeyhue.temp1
scoreboard players operation @s monkeyhue.temp5 -= @s monkeyhue.temp2

# Multiply incoming damage by this: monkeyhue.damage * monkeyhue.temp4
#-------------------------------------------------------------#
scoreboard players operation @s monkeyhue.temp6 *= @s monkeyhue.temp5
scoreboard players operation @s monkeyhue.temp6 /= %100 monkeyhue.temp1
scoreboard players operation @s monkeyhue.damage = @s monkeyhue.temp6

# Reset all scores
#-------------------------------------------------------------#
scoreboard players reset @s monkeyhue.temp1
scoreboard players reset @s monkeyhue.temp2
scoreboard players reset @s monkeyhue.temp3
scoreboard players reset @s monkeyhue.temp4
scoreboard players reset @s monkeyhue.temp5
scoreboard players reset @s monkeyhue.temp6