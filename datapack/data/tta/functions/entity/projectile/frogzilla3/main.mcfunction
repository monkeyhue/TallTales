#-------------------------------------------------------------#
#
# Controls breath attack
#
#-------------------------------------------------------------#

execute if score @s monkeyhue.time1 matches 1 facing entity @e[type=marker,limit=1,sort=nearest,tag=tta.entity.frogzilla2] feet run teleport @s ~ ~ ~ ~210 0
execute if score @s monkeyhue.time1 matches 1.. run scoreboard players add @s monkeyhue.time2 1

execute if score @s monkeyhue.time2 matches 3 positioned ^ ^ ^7 run function tta:entity/projectile/frogzilla2/spawn
execute if score @s monkeyhue.time2 matches 4.. run scoreboard players reset @s monkeyhue.time2

execute if score @s monkeyhue.time1 matches 2.. run teleport @s ~ ~ ~ ~-1.5 0

execute if score @s monkeyhue.time1 matches 37.. run kill @s