execute unless entity @s[tag=tta.player.customMending] run execute store result score @s tta.player.xpBenchmark run scoreboard players get @s tta.player.xp
execute unless entity @s[tag=tta.player.customMending] run tag @s add tta.player.customMending

execute if score @s tta.player.xp > @s tta.player.xpBenchmark run function tta:item/durability/mending_apply