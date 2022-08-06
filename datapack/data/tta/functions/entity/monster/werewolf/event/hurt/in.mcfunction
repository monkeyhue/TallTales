execute store result score @s monkeyhue.temp8 run data get entity @s ArmorItems[3].tag.CustomModelData
execute unless score @s monkeyhue.time9 matches 1.. unless score @s monkeyhue.temp8 matches 6532500.. run scoreboard players add @s monkeyhue.temp8 500

execute store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get @s monkeyhue.temp8

#Sounds
execute unless score @s monkeyhue.entity.AIState matches 17..18 run playsound minecraft:entity.wolf.hurt hostile @a ~ ~ ~ 2 1

execute unless score @s monkeyhue.entity.AIState matches 17..18 run function tta:entity/monster/werewolf/event/hurt/hurt

scoreboard players reset @s monkeyhue.temp8