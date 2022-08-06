scoreboard players add @s monkeyhue.temp4 1
execute as @s unless score @s monkeyhue.temp4 matches 64.. if block ~ ~ ~ #tta:frogzilla_passable unless entity @e[distance=0..2,type=#tta:entity_targeted/werewolf] positioned ^ ^ ^1 run function tta:entity/monster/werewolf/event/raycast/los
execute as @s if block ~ ~ ~ #tta:frogzilla_passable run function tta:entity/monster/werewolf/event/raycast/los_fail
execute as @s if score @s monkeyhue.temp4 matches 64.. run scoreboard players reset @s monkeyhue.temp4
execute as @s if entity @e[distance=0..3,type=!#tta:inedible,type=!#tta:explosive,tag=!tta.entity.hitbox.frogzilla2] run function tta:entity/monster/frogzilla2/event/tongue/raycast/1_hit