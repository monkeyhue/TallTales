#-------------------------------------------------------------#
#
# Gives back an invalid garlic crop block
#
#-------------------------------------------------------------#

# I made this a loot spawn instead of a loot give because
# of a visual bug. The loot give command is this:
# loot give @p[gamemode=!creative] loot tta:item/garlic

execute at @p[gamemode=!creative,gamemode=!spectator] run loot spawn ~ ~ ~ loot tta:item/garlic
kill @s