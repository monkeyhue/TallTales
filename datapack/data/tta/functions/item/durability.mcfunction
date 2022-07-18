data modify storage tta:root heldItem set from entity @s SelectedItem
data modify storage tta:root heldItemDurability set from storage tta:root heldItem.tag.tta.item.durability
execute store result score @s tta.player.tempDurability run data get storage tta:root heldItemDurability.uses
execute store result score @s tta.player.tempMaxDurability run data get storage tta:root heldItemDurability.max

execute unless data storage tta:root heldItem.tag.Enchantments[{id:"minecraft:unbreaking"}] run function tta:item/durability/decrement
execute if data storage tta:root heldItem.tag.Enchantments[{id:"minecraft:unbreaking",lvl:1s}] if predicate tta:rng/50 run function tta:item/durability/decrement
execute if data storage tta:root heldItem.tag.Enchantments[{id:"minecraft:unbreaking",lvl:2s}] if predicate tta:rng/33 run function tta:item/durability/decrement
execute if data storage tta:root heldItem.tag.Enchantments[{id:"minecraft:unbreaking",lvl:3s}] if predicate tta:rng/25 run function tta:item/durability/decrement
execute if data storage tta:root heldItem.tag.Enchantments[{id:"minecraft:unbreaking",lvl:4s}] if predicate tta:rng/20 run function tta:item/durability/decrement

data remove storage tta:root heldItem