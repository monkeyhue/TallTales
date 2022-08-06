#-------------------------------------------------------------#
#
# Places blocks from their spawner item frame
#
#-------------------------------------------------------------#

execute if entity @s[tag=tta.block.spawner.alchemy_table] run function tta:block/spawner/alchemy_table/main
execute if entity @s[tag=tta.block.spawner.garlic] run function tta:block/spawner/garlic/main
execute if entity @s[tag=tta.block.spawner.garlic_mutant] run function tta:block/spawner/garlic_mutant/main
execute if entity @s[tag=tta.block.spawner.werewolf] run function tta:block/spawner/werewolf/main
