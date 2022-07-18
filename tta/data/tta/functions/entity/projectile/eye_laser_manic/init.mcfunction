scoreboard players set @s monkeyhue.entity.AIState 0
execute store result score @s monkeyhue.temp1 run data get entity @p SelectedItem.tag.tta.item.durability.uses
data modify entity @s ArmorItems[0] set from entity @p SelectedItem
tag @s remove new