#-------------------------------------------------------------#
#
# This is the main function of Tall Tales.
# Runs every tick.
#
# Enjoy Tall Tales, made by Monkeyhue!
#
#-------------------------------------------------------------#
execute as @a if data entity @s SelectedItem{tag:{tta:{item:{useable:1b}}}} if data entity @s SelectedItem.tag.Enchantments[{id:"minecraft:mending"}] run function tta:item/mending

# All entity commands handled here
execute as @e[type=item_frame,tag=tta.block_2t] at @s run function tta:block/main_2t

schedule function tta:technical/main_2t 2t