#-------------------------------------------------------------#
#
# Controls the Werewolf
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.temp2 matches 4 run function tta:entity/monster/werewolf/anim/4
execute unless score @s monkeyhue.temp2 matches 4 run scoreboard players reset @s monkeyhue.time3
execute unless score @s monkeyhue.temp2 matches 4 run scoreboard players reset @s monkeyhue.time4
execute unless score @s monkeyhue.temp2 matches 4 run scoreboard players set @s monkeyhue.temp2 4

scoreboard players add @s monkeyhue.time4 1

#Attack
execute if score @s monkeyhue.time4 matches 1 run playsound minecraft:entity.wolf.growl hostile @a ~ ~ ~ 2 1 

execute if score @s monkeyhue.time4 matches 4.. run scoreboard players set @s monkeyhue.entity.AIState 5