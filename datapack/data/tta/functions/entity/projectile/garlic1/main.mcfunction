execute if score @s monkeyhue.time1 matches 200.. run function tta:entity/projectile/garlic1/hit

execute if score @s monkeyhue.time1 matches 1.. run teleport @s ^ ^ ^1.5

execute if score @s monkeyhue.time1 matches 2.. if entity @p[distance=0..2] run function tta:entity/projectile/garlic1/hit
execute unless block ~ ~1.25 ~ #tta:airlike run function tta:entity/projectile/garlic1/hit

particle dust 0.306 0.576 0.192 3 ~ ~1.25 ~ 0.1 0.1 0.1 1 1 force 
particle dust 0.306 0.576 0.192 2 ~ ~1.25 ~ 0.1 0.1 0.1 1 3 force 
particle dust 0.306 0.576 0.192 1 ~ ~1.25 ~ 0.1 0.1 0.1 1 6 force