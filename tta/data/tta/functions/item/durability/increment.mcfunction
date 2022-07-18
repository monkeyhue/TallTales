data modify storage tta:root durabilityLore set from entity @s SelectedItem.tag.display.Lore
execute if score @s tta.player.tempDurability2 = @s tta.player.tempMaxDurability2 run tag @s add tta.temp.fixLore

scoreboard players add @s tta.player.tempDurability2 1
execute store result storage tta:root heldItemDurability.uses int 1 run scoreboard players get @s tta.player.tempDurability2

execute unless data entity @s SelectedItem.tag.Enchantments[{id:"minecraft:unbreaking"}] run item modify entity @s weapon.mainhand tta:copy_durability
execute if data entity @s SelectedItem.tag.Enchantments[{id:"minecraft:unbreaking",lvl:1s}] run item modify entity @s weapon.mainhand tta:copy_durability_unb1
execute if data entity @s SelectedItem.tag.Enchantments[{id:"minecraft:unbreaking",lvl:2s}] run item modify entity @s weapon.mainhand tta:copy_durability_unb2
execute if data entity @s SelectedItem.tag.Enchantments[{id:"minecraft:unbreaking",lvl:3s}] run item modify entity @s weapon.mainhand tta:copy_durability_unb3

data remove storage tta:root durabilityLore.[-1]
execute unless entity @s[tag=tta.temp.fixLore] run data remove storage tta:root durabilityLore.[-1]

item modify entity @s weapon.mainhand tta:display_rest_of_lore
item modify entity @s weapon.mainhand tta:display_durability

scoreboard players reset @s tta.player.tempDurability2
scoreboard players reset @s tta.player.tempMaxDurability2
data remove storage tta:root heldItemDurability

execute if entity @s[tag=tta.temp.fixLore] run tag @s remove tta.temp.fixLore