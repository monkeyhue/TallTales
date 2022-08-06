effect give @s minecraft:instant_health 1 127 true
execute if score @s monkeyhue.temp6 matches 80.. run scoreboard players add @s monkeyhue.temp7 2
execute if score @s monkeyhue.temp6 matches 80.. run scoreboard players remove @s monkeyhue.temp6 80
execute if score @s monkeyhue.temp6 matches 40.. run scoreboard players add @s monkeyhue.temp7 1
execute if score @s monkeyhue.temp6 matches 40.. run scoreboard players remove @s monkeyhue.temp6 40

execute if score @s monkeyhue.temp7 matches 200.. run scoreboard players set @s monkeyhue.entity.AIState 18