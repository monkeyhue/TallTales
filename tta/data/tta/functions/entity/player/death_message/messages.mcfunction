execute if score @s monkeyhue.player.deathMessageID matches 1 run tellraw @a [{"selector":"@s","color":"white","hoverEvent":{"action":"show_entity","contents":"@s"}},{"translate":"tta.player.death_message.1"}]

execute if score @s monkeyhue.player.deathMessageID matches 2 run tellraw @a [{"selector":"@s","color":"white","hoverEvent":{"action":"show_entity","contents":"@s"}},{"translate":"tta.player.death_message.2"}]

execute if score @s monkeyhue.player.deathMessageID matches 3 run tellraw @a [{"selector":"@s","color":"white","hoverEvent":{"action":"show_entity","contents":"@s"}},{"translate":"tta.player.death_message.3"}]

execute if score @s monkeyhue.player.deathMessageID matches 4 run tellraw @a [{"selector":"@s","color":"white","hoverEvent":{"action":"show_entity","contents":"@s"}},{"translate":"tta.player.death_message.4"}]

execute if score @s monkeyhue.player.deathMessageID matches 5 run tellraw @a [{"selector":"@s","color":"white","hoverEvent":{"action":"show_entity","contents":"@s"}},{"translate":"tta.player.death_message.5"}]

execute if score @s monkeyhue.player.deathMessageID matches 9 run tellraw @a [{"selector":"@s","color":"white","hoverEvent":{"action":"show_entity","contents":"@s"}},{"translate":"tta.player.death_message.9a"},{"nbt":"HandItems[0].tag.SkullOwner.Name","entity":"@e[type=minecraft:armor_stand,tag=tta.temp.getPlayerName,limit=1]"},{"translate":"tta.player.death_message.9b"}]

