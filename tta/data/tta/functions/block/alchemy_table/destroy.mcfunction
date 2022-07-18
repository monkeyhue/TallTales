#-------------------------------------------------------------#
#
# Destroys the Alchemy Table
#
#-------------------------------------------------------------#

kill @e[type=item,distance=..0.5,limit=1,sort=nearest,nbt={Item:{id:"minecraft:barrel",Count:1b}}]
particle item barrel{CustomModelData:6532006} ~ ~ ~ -0.425 -0.425 -0.425 0.1 40 force
kill @s