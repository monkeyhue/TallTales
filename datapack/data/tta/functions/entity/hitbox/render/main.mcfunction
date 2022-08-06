execute if score @s monkeyhue.time9 matches 1.. run scoreboard players remove @s monkeyhue.time9 1
execute if score @s monkeyhue.time9 matches 0 run function tta:entity/hitbox/render/unhurt

execute if entity @s[tag=tta.render.frogzilla] run function tta:entity/hitbox/render/frogzilla
execute if entity @s[tag=tta.render.werewolf] run function tta:entity/hitbox/render/werewolf/main