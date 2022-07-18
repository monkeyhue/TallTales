#-------------------------------------------------------------#
#
# Drops all the items inside the geyser
#
#-------------------------------------------------------------#
scoreboard players remove @s monkeyhue.block.var2 1
loot spawn ~ ~ ~ loot tta:block/slime_geyser/eruption
execute if score @s monkeyhue.block.var2 matches 1.. run function tta:block/slime_geyser/destroy_contents