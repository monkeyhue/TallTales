#-------------------------------------------------------------#
#
# Controls Frogzilla.
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.temp2 matches 2 positioned ~ ~12 ~ as @e[type=wither_skeleton,tag=tta.render.frogzilla,sort=nearest,limit=1] run function tta:entity/monster/frogzilla2/anim/2
execute unless score @s monkeyhue.temp2 matches 2 run execute store result score @s monkeyhue.time3 run loot spawn ~ ~ ~ loot tta:rng/frogzilla/turn_time
execute unless score @s monkeyhue.temp2 matches 2 run scoreboard players reset @s monkeyhue.time4
execute unless score @s monkeyhue.temp2 matches 2 run scoreboard players set @s monkeyhue.temp2 2

teleport @s ~ ~ ~ ~1 ~

scoreboard players add @s monkeyhue.time4 1
execute if score @s monkeyhue.time4 matches 8 run function tta:entity/monster/frogzilla2/event/step/step_left
execute if score @s monkeyhue.time4 matches 33 run function tta:entity/monster/frogzilla2/event/step/step_right
execute if score @s monkeyhue.time4 matches 48.. run scoreboard players reset @s monkeyhue.time4

scoreboard players remove @s monkeyhue.time3 1
execute if score @s monkeyhue.time3 matches ..0 run scoreboard players set @s monkeyhue.entity.AIState 0