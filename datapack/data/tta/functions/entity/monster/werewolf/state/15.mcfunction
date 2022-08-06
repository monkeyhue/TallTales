#-------------------------------------------------------------#
#
# Controls the Werewolf
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.temp2 matches 15 run function tta:entity/monster/werewolf/anim/15
execute unless score @s monkeyhue.temp2 matches 15 run scoreboard players reset @s monkeyhue.time4
execute unless score @s monkeyhue.temp2 matches 15 run scoreboard players set @s monkeyhue.temp2 15

scoreboard players add @s monkeyhue.time4 1

#Attack
execute if score @s monkeyhue.time4 matches 1 as @e[type=item,distance=0..40,limit=10,sort=nearest] if predicate tta:werewolf_edible run tag @s add tta.temp.werewolfItem
execute if score @s monkeyhue.time4 matches 13 run playsound minecraft:entity.wither.break_block hostile @a ~ ~ ~ 2 0.5
execute if score @s monkeyhue.time4 matches 13 positioned ^ ^0.5 ^-1 as @e[distance=..2,limit=1,sort=nearest,type=#tta:entity_targets/werewolf] run function tta:entity/monster/werewolf/event/attack_1
execute if score @s monkeyhue.time4 matches 13 if block ^ ^3 ^ #tta:breakable run setblock ^ ^3 ^ minecraft:air destroy
execute if score @s monkeyhue.time4 matches 13 if block ^ ^3 ^-1 #tta:breakable run setblock ^ ^3 ^-1 minecraft:air destroy
execute if score @s monkeyhue.time4 matches 13 if block ^ ^2 ^ #tta:breakable run setblock ^ ^2 ^ minecraft:air destroy
execute if score @s monkeyhue.time4 matches 13 if block ^ ^3 ^-1 #tta:breakable run setblock ^ ^2 ^-1 minecraft:air destroy
execute if score @s monkeyhue.time4 matches 26 run playsound minecraft:entity.wither.break_block hostile @a ~ ~ ~ 2 0.5
execute if score @s monkeyhue.time4 matches 26 positioned ^ ^0.5 ^-1 as @e[distance=..2,limit=1,sort=nearest,type=#tta:entity_targets/werewolf] run function tta:entity/monster/werewolf/event/attack_1
execute if score @s monkeyhue.time4 matches 26 if block ^ ^1 ^ #tta:breakable run setblock ^ ^1 ^ minecraft:air destroy
execute if score @s monkeyhue.time4 matches 26 if block ^ ^1 ^-1 #tta:breakable run setblock ^ ^1 ^-1 minecraft:air destroy
execute if score @s monkeyhue.time4 matches 37 run playsound minecraft:entity.wither.break_block hostile @a ~ ~ ~ 2 0.5
execute if score @s monkeyhue.time4 matches 37 positioned ^ ^0.5 ^-1 as @e[distance=..2,limit=1,sort=nearest,type=#tta:entity_targets/werewolf] run function tta:entity/monster/werewolf/event/attack_1
execute if score @s monkeyhue.time4 matches 37 if block ^ ^ ^ #tta:breakable run setblock ^ ^ ^ minecraft:air destroy
execute if score @s monkeyhue.time4 matches 37 if block ^ ^ ^-1 #tta:breakable run setblock ^ ^ ^-1 minecraft:air destroy

execute if score @s monkeyhue.time4 matches 44.. run scoreboard players set @s monkeyhue.entity.AIState 3