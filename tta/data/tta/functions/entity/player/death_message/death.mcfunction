execute store result score @s monkeyhue.temp2 run data get entity @s Health
execute if score @s monkeyhue.temp2 matches ..0 run function tta:entity/player/death_message/messages
scoreboard players reset @s monkeyhue.player.deathMessageID
scoreboard players reset @s monkeyhue.temp2