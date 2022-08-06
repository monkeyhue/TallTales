playsound minecraft:entity.wolf.step hostile @a ~ ~ ~ 1 1
execute as @e[type=item,distance=0..40,limit=10,sort=nearest] if predicate tta:werewolf_edible run tag @s add tta.temp.werewolfItem