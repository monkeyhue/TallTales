#-------------------------------------------------------------#
#
# Controls block behavior each second (20 ticks).
#
#-------------------------------------------------------------#

execute if entity @s[tag=tta.block.crop] run function tta:block/crop/main_20t
execute if entity @s[tag=tta.block.slime_geyser] if block ~ ~1 ~ #tta:airlike_with_liquid run function tta:block/slime_geyser/main_20t