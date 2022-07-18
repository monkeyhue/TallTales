#-------------------------------------------------------------#
#
# Controls Frogzilla's tongue when it hits something
#
#-------------------------------------------------------------#

particle minecraft:splash ~ ~2 ~ 1 0.5 1 0.5 20 normal
playsound minecraft:entity.slime.squish hostile @a ~ ~ ~ 1 1
execute if entity @s[type=!player] run tag @s add tta.temp.eatingByFrogzilla
execute if entity @s[type=tnt] run data merge entity @s {Fuse:100}
execute if entity @s[type=player,gamemode=!creative,gamemode=!spectator] run tag @s add tta.temp.eatingByFrogzilla
execute if entity @s[type=player,gamemode=!creative,gamemode=!spectator] run effect give @s slow_falling 4 0 true