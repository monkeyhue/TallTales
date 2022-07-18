#-------------------------------------------------------------#
#
# Controls Frogzilla.
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.temp2 matches 24 positioned ~ ~12 ~ as @e[type=wither_skeleton,tag=tta.render.frogzilla,sort=nearest,limit=1] run function tta:entity/monster/frogzilla2/anim/24
execute unless score @s monkeyhue.temp2 matches 24 run scoreboard players reset @s monkeyhue.time3
execute unless score @s monkeyhue.temp2 matches 24 run scoreboard players reset @s monkeyhue.time4
execute unless score @s monkeyhue.temp2 matches 24 run scoreboard players set @s monkeyhue.temp2 24

scoreboard players add @s monkeyhue.time3 1

execute if score @s monkeyhue.time3 matches 10 as @r[distance=24..128,gamemode=!creative,gamemode=!spectator] run function tta:entity/monster/frogzilla2/event/target

execute if score @s monkeyhue.time3 matches 19 run playsound minecraft:tta.entity.frogzilla.roar hostile @a ~ ~ ~ 8 1 0.1

execute if score @s monkeyhue.time3 matches 100.. unless score @s monkeyhue.temp9 matches 1.. run scoreboard players set @s monkeyhue.entity.AIState 11