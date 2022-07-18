#-------------------------------------------------------------#
#
# Does a thing when the Garlic Mutant eats a thing
#
#-------------------------------------------------------------#

execute if entity @s[type=!player,tag=!smithed.strict,nbt=!{Invulnerable:1b}] run function tta:entity/monster/garlic_mutant/event/eat_normal
execute if entity @s[type=player,gamemode=!creative,gamemode=!spectator] run function tta:entity/monster/garlic_mutant/event/player/eat

