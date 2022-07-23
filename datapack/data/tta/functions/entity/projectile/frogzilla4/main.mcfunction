#-------------------------------------------------------------#
#
# Controls breath attack
#
#-------------------------------------------------------------#

execute if score @s monkeyhue.time1 matches 1 facing entity @e[type=marker,limit=1,sort=nearest,tag=tta.entity.frogzilla2] feet run teleport @s ~ ~ ~ 0 -80
scoreboard players add @s monkeyhue.time2 1

execute if score @s monkeyhue.time2 matches 2 run function tta:entity/projectile/frogzilla2/spawn_2
execute if score @s monkeyhue.time2 matches 6.. run scoreboard players reset @s monkeyhue.time2

execute if score @s monkeyhue.time1 matches 2.. run teleport @s ~ ~ ~ ~ ~-0.25

execute if score @s monkeyhue.time1 matches 36.. run kill @s