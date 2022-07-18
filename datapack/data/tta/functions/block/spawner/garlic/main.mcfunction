#-------------------------------------------------------------#
#
# Controls block behavior each tick.
#
#-------------------------------------------------------------#

execute unless block ~ ~-1 ~ farmland run function tta:block/spawner/garlic/give
execute if block ~ ~-1 ~ farmland unless block ~ ~ ~ air run function tta:block/spawner/garlic/give
execute if block ~ ~-1 ~ farmland if block ~ ~ ~ air run function tta:block/spawner/garlic/place