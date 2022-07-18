#-------------------------------------------------------------#
#
# Spawns an item from the slime geyser
#
#-------------------------------------------------------------#

playsound minecraft:entity.slime.squish block @a ~ ~ ~ 1 0.7
loot spawn ~ ~0.5 ~ loot tta:block/slime_geyser/eruption
execute positioned ~ ~0.5 ~ run data modify entity @e[type=item,limit=1,sort=nearest,distance=0..1] Motion[1] set value 0.75
scoreboard players remove @s monkeyhue.block.var2 1