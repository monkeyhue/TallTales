execute if entity @p[distance=..160] run spreadplayers ~ ~ 160 160 false @s
execute unless entity @p[distance=..160] run function tta:entity/monster/frogzilla2/summon
execute unless entity @p[distance=..160] run kill @s