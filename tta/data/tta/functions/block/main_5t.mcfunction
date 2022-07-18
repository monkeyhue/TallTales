#-------------------------------------------------------------#
#
# Controls block behavior every 5 ticks.
#
#-------------------------------------------------------------#

execute if entity @s[tag=tta.block.alchemy_table] run function tta:block/alchemy_table/main_5t
execute if entity @s[tag=tta.block.crop] run function tta:block/crop/main_5t