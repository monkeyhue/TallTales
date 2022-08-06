#-------------------------------------------------------------#
#
# Controls Frogzilla.
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.temp2 matches 18 run function tta:entity/monster/werewolf/anim/17
execute unless score @s monkeyhue.temp2 matches 18 run scoreboard players reset @s monkeyhue.time3
execute unless score @s monkeyhue.temp2 matches 18 run scoreboard players set @s monkeyhue.temp2 18

scoreboard players add @s monkeyhue.time3 1

execute if score @s monkeyhue.time3 matches 1 run playsound minecraft:entity.wolf.death hostile @a ~ ~ ~ 2 1

execute if score @s monkeyhue.time3 matches 1 positioned ~ ~3 ~ run loot spawn ~ ~ ~ loot tta:entity/werewolf
execute if score @s monkeyhue.time3 matches 1 run advancement grant @p only tta:main/werewolf_cookie

execute if score @s monkeyhue.time3 matches 38.. positioned ~ ~0.1 ~ run particle poof ~ ~ ~ 0.6 0.2 0.6 0.05 30 force
execute if score @s monkeyhue.time3 matches 38.. run kill @s
#execute if score @s monkeyhue.time3 matches 38.. run teleport @s ~ -110 ~