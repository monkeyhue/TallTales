#-------------------------------------------------------------#
#
# Controls Frogzilla.
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.temp2 matches 26 positioned ~ ~12 ~ as @e[type=wither_skeleton,tag=tta.render.frogzilla,sort=nearest,limit=1] run function tta:entity/monster/frogzilla2/anim/27
execute unless score @s monkeyhue.temp2 matches 26 run scoreboard players reset @s monkeyhue.time3
execute unless score @s monkeyhue.temp2 matches 26 run scoreboard players reset @s monkeyhue.time4
execute unless score @s monkeyhue.temp2 matches 26 run scoreboard players set @s monkeyhue.temp2 26

scoreboard players add @s monkeyhue.time3 1

execute if score @s monkeyhue.time3 matches 10 as @r[distance=12..190,gamemode=!creative,gamemode=!spectator] run function tta:entity/monster/frogzilla2/event/target
execute unless score @s monkeyhue.temp3 matches 1.. if score @s monkeyhue.time3 matches 15 as @e[distance=12..190,type=#tta:frogzilla_preferred,type=!player,sort=random,limit=1,tag=!global.ignore,tag=!smithed.strict] run function tta:entity/monster/frogzilla2/event/target
execute unless score @s monkeyhue.temp3 matches 1.. if score @s monkeyhue.time3 matches 20 as @e[distance=24..64,type=!#tta:inedible,type=!#tta:explosive,type=!glow_squid,type=!squid,sort=random,limit=1,tag=!global.ignore,tag=!smithed.strict] run function tta:entity/monster/frogzilla2/event/target

execute if score @s monkeyhue.time3 matches 20 run playsound minecraft:tta.entity.frogzilla.roar hostile @a ~ ~ ~ 8 1 0.1

execute if score @s monkeyhue.time3 matches 80.. unless score @s monkeyhue.temp9 matches 1.. run scoreboard players set @s monkeyhue.entity.AIState 11
1y40f