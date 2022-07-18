particle soul_fire_flame
execute as @s if block ~ ~ ~ #tta:frogzilla_breakable unless entity @e[distance=0..4,type=!player,type=!#tta:inedible] positioned ^ ^ ^1 run function tta:commands/raycast
execute as @s if entity @e[type=!player,distance=0..4,type=!#tta:inedible] run function tta:commands/raycast_hit