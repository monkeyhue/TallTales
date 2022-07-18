#-------------------------------------------------------------#
#
# Controls player behavior each second.
#
#-------------------------------------------------------------#

execute unless data entity @s SelectedItem{tag:{tta:{item:{useable:1b}}}} unless data entity @s SelectedItem.tag.Enchantments[{id:"minecraft:mending"}] if entity @s[tag=tta.player.customMending] as @s run function tta:item/durability/remove_mending