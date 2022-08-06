execute if entity @p[distance=..48] run spreadplayers ~ ~ 8 16 false @s
execute unless entity @p[distance=..48] run function tta:entity/monster/werewolf/summon/fullmoon
execute unless entity @p[distance=..48] run kill @s