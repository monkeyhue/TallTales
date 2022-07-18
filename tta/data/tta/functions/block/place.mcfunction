#-------------------------------------------------------------#
#
# Places real blocks. Item frames are saved for crops.
#
#-------------------------------------------------------------#

execute if block ~ ~ ~ furnace{Items:[{tag:{smithed:{block:{id:"tta:alchemy_table"}}}}]} run function tta:block/alchemy_table/init/place
execute if block ~ ~ ~ furnace{Items:[{tag:{smithed:{block:{id:"tta:slime_geyser"}}}}]} run function tta:block/slime_geyser/place