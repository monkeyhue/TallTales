#-------------------------------------------------------------#
#
# Controls player behavior each tick.
#
#-------------------------------------------------------------#

execute if score @s monkeyhue.player.rightClick matches 1.. run data modify storage tta:root temp.itemID set from entity @s SelectedItem.tag.tta.item.id
execute if score @s monkeyhue.player.rightClick matches 1.. unless score @s tta.player.itemCooldown matches 1.. at @s run function tta:item/use
execute if score @s tta.player.throwItem matches 1.. run data modify storage tta:root temp.itemID set from entity @s SelectedItem.tag.tta.item.id
execute if score @s tta.player.throwItem matches 1.. unless score @s tta.player.itemCooldown matches 1.. at @s run function tta:item/throw

execute if score @s tta.player.itemCooldown matches 1.. run scoreboard players remove @s tta.player.itemCooldown 1
execute if score @s tta.player.itemCooldown matches ..0 run scoreboard players reset @s tta.player.itemCooldown

execute if score @s monkeyhue.player.deathMessageID matches 1.. run function tta:entity/player/death_message/death