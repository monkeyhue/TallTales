scoreboard players add @s monkeyhue.temp4 1
execute unless score @s monkeyhue.temp4 matches 300.. unless entity @e[type=!#tta:inedible,distance=0..5,tag=tta.temp.frogzillaTargeted] positioned ~ ~-2 ~ run function tta:entity/monster/frogzilla2/event/tongue/raycast/vertical_test
execute if score @s monkeyhue.temp4 matches 300.. run scoreboard players reset @s monkeyhue.temp4
execute if score @s monkeyhue.temp4 matches ..90 if entity @e[type=player,distance=..8] run scoreboard players set @s monkeyhue.entity.AIState 30
execute if entity @e[type=!#tta:inedible,type=!player,distance=0..5,tag=tta.temp.frogzillaTargeted] if score @s monkeyhue.entity.AIState matches 11 run function tta:entity/monster/frogzilla2/event/tongue/raycast/vertical_test_hit