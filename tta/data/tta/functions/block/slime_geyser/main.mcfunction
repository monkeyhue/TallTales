#-------------------------------------------------------------#
#
# Main behavior of the Toxic Geyser
#
#-------------------------------------------------------------#

# Destroyed
execute unless block ~ ~ ~ obsidian unless block ~ ~ ~ bedrock run function tta:block/slime_geyser/destroy

# Erupt States
execute if score @s monkeyhue.block.var3 matches 1 run function tta:block/slime_geyser/event/primed
execute if score @s monkeyhue.block.var3 matches 2 if block ~ ~1 ~ #tta:airlike_with_liquid run function tta:block/slime_geyser/event/erupt_pre
execute if score @s monkeyhue.block.var3 matches 3 run function tta:block/slime_geyser/event/erupt

execute unless score @s monkeyhue.block.var3 matches 2.. if block ~ ~1 ~ #tta:airlike_with_liquid positioned ~ ~1 ~ if entity @e[type=!#tta:not_mobs_players,distance=..1,tag=!global.ignore] positioned ~ ~-1 ~ run function tta:block/slime_geyser/event/erupt_pre