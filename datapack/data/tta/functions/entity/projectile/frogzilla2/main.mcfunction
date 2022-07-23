execute if score @s monkeyhue.time1 matches 80.. run function tta:entity/projectile/frogzilla2/hit

execute if score @s monkeyhue.time1 matches 1.. run teleport @s ^ ^ ^2.25

execute if score @s monkeyhue.time1 matches 2.. if entity @p[distance=0..4] run function tta:entity/projectile/frogzilla2/hit
execute unless block ~ ~1.5 ~ #tta:airlike run function tta:entity/projectile/frogzilla2/hit

particle dust 0.667 1.000 0.333 3 ~ ~1.1 ~ 1 0.2 1 1 10 force 
particle dust 0.667 1.000 0.333 2 ~ ~1 ~ 1.5 0.3 1.5 1 15 force 
particle dust 0.667 1.000 0.333 1 ~ ~1 ~ 1.5 0.3 1.5 1 30 force 