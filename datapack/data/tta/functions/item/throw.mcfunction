data modify storage tta:root temp.itemID set from entity @s SelectedItem.tag.tta.item.id

execute if data storage tta:root temp{itemID:7} run function tta:entity/projectile/thrown/wooden_stake/spawn
execute if data storage tta:root temp{itemID:10} run function tta:entity/projectile/thrown/silver_stake/spawn

execute unless data entity @s SelectedItem{id:"minecraft:snowball"} run function tta:entity/projectile/thrown/fix

data remove storage tta:root temp.itemID
scoreboard players reset @s tta.player.throwItem
