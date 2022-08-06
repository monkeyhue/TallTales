#-------------------------------------------------------------#
#
# Controls the Werewolf
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.temp2 matches 14 run function tta:entity/monster/werewolf/anim/14
execute unless score @s monkeyhue.temp2 matches 14 run scoreboard players reset @s monkeyhue.time4
execute unless score @s monkeyhue.temp2 matches 14 run scoreboard players set @s monkeyhue.temp2 14

scoreboard players add @s monkeyhue.time4 1

execute if block ^ ^ ^-1 #tta:werewolf_passable run teleport @s ^ ^ ^-0.5 ~ 0

#Attack
execute if score @s monkeyhue.time4 matches 1 run playsound minecraft:entity.iron_golem.attack hostile @a ~ ~ ~ 2 1.5
execute if score @s monkeyhue.time4 matches 1 run playsound minecraft:entity.wolf.growl hostile @a ~ ~ ~ 2 1
execute if score @s monkeyhue.time4 matches 4 positioned ^ ^1 ^ as @e[distance=..3,limit=6,sort=nearest,type=#tta:entity_targets/werewolf] run function tta:entity/monster/werewolf/event/attack_4

execute if score @s monkeyhue.time4 matches 14.. run scoreboard players set @s monkeyhue.entity.AIState 3