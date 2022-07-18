execute if score @s monkeyhue.time1 matches 200.. run function tta:entity/projectile/frogzilla2/hit

execute if score @s monkeyhue.time1 matches 1.. run teleport @s ^ ^ ^1.5

execute if score @s monkeyhue.time1 matches 2.. if entity @p[distance=0..2] run function tta:entity/projectile/frogzilla2/hit
execute unless block ~ ~1.25 ~ #tta:airlike run function tta:entity/projectile/frogzilla2/hit

execute facing entity @p run particle sneeze ~ ~1.5 ~ ^ ^ ^1000000 0.000001 0 force 