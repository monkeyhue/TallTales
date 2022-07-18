scoreboard players add @s monkeyhue.temp4 1
execute unless score @s monkeyhue.temp4 matches 200.. unless entity @e[type=!#tta:inedible,distance=0..5,tag=tta.temp.frogzillaTargeted] positioned ~ ~-2 ~ run function tta:entity/monster/frogzilla2/event/tongue/raycast/vertical_test
execute as @s if score @s monkeyhue.temp4 matches 200.. run scoreboard players reset @s monkeyhue.temp4
execute as @s if entity @e[type=!#tta:inedible,distance=0..5,tag=tta.temp.frogzillaTargeted] run function tta:entity/monster/frogzilla2/event/tongue/raycast/vertical_test_hit