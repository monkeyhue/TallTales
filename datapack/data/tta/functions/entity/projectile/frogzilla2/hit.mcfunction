scoreboard players set @e[type=player,distance=0..4] monkeyhue.player.deathMessageID 10
scoreboard players add @e[distance=0..4] smithed.damage 14
execute as @e[distance=0..4] run function #smithed.damage:entity/apply/projectile
playsound minecraft:block.fire.extinguish hostile @a ~ ~ ~ 1.5 1
playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1.5 1
effect give @e[distance=0..4] poison 10 0
particle explosion_emitter
kill @s