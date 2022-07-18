#-------------------------------------------------------------#
#
# Kills the player when eaten by Frogzilla
#
#-------------------------------------------------------------#

gamerule showDeathMessages false

kill @s

execute if entity @s[tag=tta.temp.eatingByFrogzilla] run tellraw @a [{"selector":"@s","color":"white","hoverEvent":{"action":"show_entity","contents":"@s"}},{"text":" was devoured by Frogzilla","color":"white"}]

tag @s remove tta.temp.frogzillaTargeted
tag @s remove tta.temp.eatingByFrogzilla

gamerule showDeathMessages true
