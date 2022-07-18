data modify storage tta:root durabilityLore set from entity @s SelectedItem.tag.display.Lore
execute if score @s tta.player.tempDurability = @s tta.player.tempMaxDurability run tag @s add tta.temp.firstConversion

scoreboard players remove @s tta.player.tempDurability 1
execute store result storage tta:root heldItemDurability.uses int 1 run scoreboard players get @s tta.player.tempDurability

item modify entity @s weapon.mainhand tta:copy_durability

data remove storage tta:root durabilityLore.[-1]
execute unless entity @s[tag=tta.temp.firstConversion] run data remove storage tta:root durabilityLore.[-1]

item modify entity @s weapon.mainhand tta:display_rest_of_lore
item modify entity @s weapon.mainhand tta:display_durability

execute if score @s tta.player.tempDurability matches ..0 as @s run function tta:item/durability/clear
scoreboard players reset @s tta.player.tempDurability
scoreboard players reset @s tta.player.tempMaxDurability
data remove storage tta:root heldItemDurability

execute if entity @s[tag=tta.temp.firstConversion] run tag @s remove tta.temp.firstConversion