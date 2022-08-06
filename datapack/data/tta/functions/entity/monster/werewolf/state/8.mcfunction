#-------------------------------------------------------------#
#
# Controls the Werewolf
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.temp2 matches 8 run function tta:entity/monster/werewolf/anim/8
execute unless score @s monkeyhue.temp2 matches 8 run scoreboard players reset @s monkeyhue.time4
execute unless score @s monkeyhue.temp2 matches 8 run scoreboard players set @s monkeyhue.temp2 8

scoreboard players add @s monkeyhue.time4 1

#Attack
execute if score @s monkeyhue.time4 matches 8 positioned ^ ^ ^-2 as @e[distance=..2.5,limit=2,sort=nearest,type=#tta:entity_targets/werewolf] run function tta:entity/monster/werewolf/event/attack_1

execute if score @s monkeyhue.time4 matches 17.. run scoreboard players set @s monkeyhue.entity.AIState 6