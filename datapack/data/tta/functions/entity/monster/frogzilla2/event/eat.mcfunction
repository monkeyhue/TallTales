#-------------------------------------------------------------#
#
# Does a thing when Frogzilla eats a thing
#
#-------------------------------------------------------------#

execute if entity @e[distance=0..8,type=!#tta:inedible,tag=!tta.entity.hitbox] run playsound minecraft:entity.frog.eat hostile @a ~ ~ ~ 6 1
execute if entity @e[distance=0..8,type=!#tta:inedible,tag=!tta.entity.hitbox] run playsound minecraft:entity.generic.eat hostile @a ~ ~ ~ 6 1

execute as @e[type=!player,type=!#tta:explosive,tag=tta.temp.eatingByFrogzilla,distance=0..8,tag=!tta.entity.hitbox] run function tta:entity/monster/frogzilla2/event/eat/eat
execute as @e[type=player,tag=tta.temp.eatingByFrogzilla,distance=0..8,tag=!tta.entity.hitbox] run function tta:entity/monster/frogzilla2/event/eat/player
execute as @e[type=#tta:explosive,tag=tta.temp.eatingByFrogzilla,distance=0..8,tag=!tta.entity.hitbox] run function tta:entity/monster/frogzilla2/event/eat/boom

