scoreboard players add @s smithed.damage 16
function #smithed.damage:entity/apply/armor
execute if entity @s[type=player] store result score @s monkeyhue.temp2 run data get entity @s Health
execute if entity @s[type=player] run scoreboard players set @s monkeyhue.player.deathMessageID 13
execute if entity @s[type=player] if score @s monkeyhue.temp2 matches 0 run function tta:entity/player/death_message
execute if entity @s[type=player] run scoreboard players reset @s monkeyhue.temp2