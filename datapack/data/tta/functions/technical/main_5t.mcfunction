#-------------------------------------------------------------#
#
# This is a main function of Tall Tales.
# Runs every 5 ticks.
#
# Enjoy Tall Tales, made by Monkeyhue!
#
#-------------------------------------------------------------#

# All entity commands handled here
execute as @e[type=armor_stand,tag=tta.block_5t] at @s run function tta:block/main_5t
execute as @e[type=item_frame,tag=tta.block_5t] at @s run function tta:block/main_5t

schedule function tta:technical/main_5t 5t