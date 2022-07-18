data modify storage tta:root heldItemDurability set from entity @s SelectedItem.tag.tta.item.durability
execute store result score @s tta.player.tempDurability2 run data get storage tta:root heldItemDurability.uses
execute store result score @s tta.player.tempMaxDurability2 run data get storage tta:root heldItemDurability.max
data modify storage tta:root durabilityLore set from entity @s SelectedItem.tag.display.Lore

scoreboard players add @s tta.player.tempDurability2 1
execute if score @s tta.player.tempDurability2 >= @s tta.player.tempMaxDurability2 run tag @s add tta.temp.fixLore
execute unless entity @s[tag=tta.temp.fixLore] store result storage tta:root heldItemDurability.uses int 1 run scoreboard players get @s tta.player.tempDurability2
execute if entity @s[tag=tta.temp.fixLore] store result storage tta:root heldItemDurability.uses int 1 run scoreboard players get @s tta.player.tempMaxDurability2

item modify entity @s weapon.mainhand tta:copy_durability

data remove storage tta:root durabilityLore.[-1]
data remove storage tta:root durabilityLore.[-1]

item modify entity @s weapon.mainhand tta:display_rest_of_lore
execute unless entity @s[tag=tta.temp.fixLore] run item modify entity @s weapon.mainhand tta:display_durability
execute if entity @s[tag=tta.temp.fixLore] run item modify entity @s weapon.mainhand tta:display_full_durability

execute unless score @s tta.player.tempDurability2 >= @s tta.player.tempMaxDurability2 run xp add @s -1 points
execute if score @s tta.player.tempDurability2 >= @s tta.player.tempMaxDurability2 run execute store result score @s tta.player.xpBenchmark run scoreboard players get @s tta.player.xp
scoreboard players reset @s tta.player.tempDurability2
scoreboard players reset @s tta.player.tempMaxDurability2
data remove storage tta:root heldItemDurability

execute if entity @s[tag=tta.temp.fixLore] run tag @s remove tta.temp.fixLore