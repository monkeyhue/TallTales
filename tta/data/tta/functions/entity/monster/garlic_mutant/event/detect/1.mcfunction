scoreboard players add @s monkeyhue.temp3 1
execute as @s unless score @s monkeyhue.temp3 matches 40.. if block ~ ~ ~ #tta:werewolf_passable unless entity @e[distance=0..10,tag=!tta.entity.hitbox,type=!#tta:inedible,type=!#tta:explosive] positioned ^ ^ ^1 run function tta:entity/monster/garlic_mutant/event/detect/1
execute as @s unless block ~ ~ ~ #tta:werewolf_passable run scoreboard players reset @s monkeyhue.temp3
execute as @s if score @s monkeyhue.temp3 matches 40.. run scoreboard players reset @s monkeyhue.temp3
execute as @s if entity @e[distance=0..10,tag=!tta.entity.hitbox,type=!#tta:inedible,type=!#tta:explosive] run function tta:entity/monster/garlic_mutant/event/detect/1_hit