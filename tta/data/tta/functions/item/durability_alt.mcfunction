data modify storage tta:root heldItemDurability set from entity @s HandItems[0].tag.tta.item.durability
execute store result score @s tta.player.tempDurability run data get storage tta:root heldItemDurability.uses
execute store result score @s tta.player.tempMaxDurability run data get storage tta:root heldItemDurability.max

function tta:item/durability/decrement_alt