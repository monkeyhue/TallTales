data modify storage tta:root temp.itemID set from entity @s SelectedItem.tag.tta.item.id

execute if data storage tta:root temp{itemID:5} run function tta:entity/projectile/eye_laser/spawn
execute if data storage tta:root temp{itemID:6} run function tta:entity/projectile/eye_laser_manic/spawn

data remove storage tta:root temp.itemID
scoreboard players reset @s monkeyhue.player.rightClick
