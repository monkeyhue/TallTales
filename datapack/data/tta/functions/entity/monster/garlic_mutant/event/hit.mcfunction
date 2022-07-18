scoreboard players remove @s monkeyhue.time5 1
execute if score @s monkeyhue.time5 matches 9 run playsound minecraft:block.big_dripleaf.break hostile @a ~ ~ ~ 2 0.5
execute if score @s monkeyhue.time5 matches 9 run function tta:ajmodel/garlic_mutant/set_variant/stunned
execute if score @s monkeyhue.time5 matches 0 run function tta:ajmodel/garlic_mutant/set_variant/angry
execute if score @s monkeyhue.time5 matches ..0 run scoreboard players reset @s monkeyhue.time5
