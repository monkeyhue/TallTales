#-------------------------------------------------------------#
#
# Controls the Werewolf
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.temp2 matches 7 run function tta:entity/monster/werewolf/anim/7
execute unless score @s monkeyhue.temp2 matches 7 run scoreboard players reset @s monkeyhue.time4
execute unless score @s monkeyhue.temp2 matches 7 run scoreboard players set @s monkeyhue.temp2 7

scoreboard players add @s monkeyhue.time4 1

#Attack
execute if score @s monkeyhue.time4 matches 12 run playsound minecraft:entity.fox.sniff master @a ~ ~ ~ 2 0.5
execute if score @s monkeyhue.time4 matches 24 run playsound minecraft:entity.wolf.growl master @a ~ ~ ~ 2 1

execute if score @s monkeyhue.time4 matches 30 facing entity @e[distance=0..32,type=#tta:entity_targets/werewolf,sort=random] eyes run teleport @s ~ ~ ~ ~180 0

execute if score @s monkeyhue.time4 matches 35.. run scoreboard players set @s monkeyhue.entity.AIState 6