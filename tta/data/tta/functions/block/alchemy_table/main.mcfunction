#-------------------------------------------------------------#
#
# Main behavior of the Alchemy Table
#
#-------------------------------------------------------------#

# Destroyed
execute unless block ~ ~ ~ barrel run function tta:block/alchemy_table/destroy
execute if block ~ ~ ~ barrel[open=true] run function tta:block/alchemy_table/ui/main