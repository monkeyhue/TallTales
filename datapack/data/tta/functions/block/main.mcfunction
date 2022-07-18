#-------------------------------------------------------------#
#
# Controls block behavior each tick.
#
#-------------------------------------------------------------#

execute if entity @s[tag=tta.block.spawner] run function tta:block/spawner/main
execute if entity @s[tag=tta.block.crop] run function tta:block/crop/main
execute if entity @s[tag=tta.block.alchemy_table] run function tta:block/alchemy_table/main
execute if entity @s[tag=tta.block.slime_geyser] run function tta:block/slime_geyser/main