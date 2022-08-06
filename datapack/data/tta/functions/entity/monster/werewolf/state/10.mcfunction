#-------------------------------------------------------------#
#
# Controls the Werewolf
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.temp2 matches 10 run function tta:entity/monster/werewolf/anim/10
execute unless score @s monkeyhue.temp2 matches 10 run scoreboard players reset @s monkeyhue.time4
execute unless score @s monkeyhue.temp2 matches 10 run scoreboard players set @s monkeyhue.temp2 10

scoreboard players add @s monkeyhue.time4 1

#Eat
execute positioned ^ ^ ^-1 if score @s monkeyhue.time4 matches 4 store result score @s monkeyhue.temp5 run data get entity @e[type=item,limit=1,sort=nearest,tag=tta.temp.werewolfItem] Item.Count
execute positioned ^ ^ ^-1 if score @s monkeyhue.time4 matches 4 if data entity @e[type=item,limit=1,sort=nearest,tag=tta.temp.werewolfItem] Item{id:"minecraft:cookie"} run scoreboard players operation @s monkeyhue.temp6 += @s monkeyhue.temp5
execute positioned ^ ^ ^-1 if score @s monkeyhue.time4 matches 5 run kill @e[type=item,limit=1,sort=nearest,tag=tta.temp.werewolfItem]
execute if score @s monkeyhue.time4 matches 30 run scoreboard players operation @s monkeyhue.entity.customHealth += @s monkeyhue.temp5
execute if score @s monkeyhue.time4 matches 30 run playsound minecraft:entity.generic.eat hostile @a ~ ~ ~ 1.5 1
execute if score @s monkeyhue.time4 matches 30 if score @s monkeyhue.temp6 matches 20.. run function tta:entity/monster/werewolf/event/eat_cookie
execute if score @s monkeyhue.time4 matches 30 if score @s monkeyhue.entity.customHealth matches 201.. run scoreboard players set @s monkeyhue.entity.customHealth 200
execute if score @s monkeyhue.time4 matches 34 run playsound minecraft:entity.generic.eat hostile @a ~ ~ ~ 1.5 1
execute if score @s monkeyhue.time4 matches 38 run playsound minecraft:entity.generic.eat hostile @a ~ ~ ~ 1.5 1

execute if score @s monkeyhue.time4 matches 48 run playsound minecraft:entity.generic.eat hostile @a ~ ~ ~ 1.5 1
execute if score @s monkeyhue.time4 matches 55 run playsound minecraft:entity.generic.eat hostile @a ~ ~ ~ 1.5 1

execute if score @s monkeyhue.time4 matches 60.. run scoreboard players set @s monkeyhue.entity.AIState 3