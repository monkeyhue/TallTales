data modify storage tta:root temp.UUIDComparisonB set from storage tta:root temp.UUIDComparisonA
execute store success score @s monkeyhue.temp1 run data modify storage tta:root temp.UUIDComparisonB set from entity @s UUID

execute if score @s monkeyhue.temp1 matches 0 run summon armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,Invisible:1b,Marker:1b,Tags:["tta.projectile","tta.temp","tta.temp.getPlayerName"],HandItems:[{id:"minecraft:player_head",Count:1b},{}]}
execute if score @s monkeyhue.temp1 matches 0 run item modify entity @e[type=armor_stand,limit=1,tag=tta.temp.getPlayerName] weapon tta:util/get_playername
execute if score @s monkeyhue.temp1 matches 0 run scoreboard players set @p[scores={monkeyhue.temp3=1..}] monkeyhue.player.deathMessageID 9

scoreboard players reset @s monkeyhue.temp1
