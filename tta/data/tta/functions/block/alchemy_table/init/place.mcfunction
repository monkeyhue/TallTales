#-------------------------------------------------------------#
#
# Places an Alchemy Table
#
#-------------------------------------------------------------#

execute if block ~ ~ ~ furnace[facing=north] run summon armor_stand ~ ~ ~ {Silent:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["tta.block","tta.block_5t","tta.block.alchemy_table","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:barrel",Count:1b,tag:{CustomModelData:6532006}}],Pose:{Head:[0f,0f,0f]}}
execute if block ~ ~ ~ furnace[facing=east] run summon armor_stand ~ ~ ~ {Silent:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["tta.block","tta.block_5t","tta.block.alchemy_table","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:barrel",Count:1b,tag:{CustomModelData:6532006}}],Pose:{Head:[0f,90f,0f]}}
execute if block ~ ~ ~ furnace[facing=south] run summon armor_stand ~ ~ ~ {Silent:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["tta.block","tta.block_5t","tta.block.alchemy_table","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:barrel",Count:1b,tag:{CustomModelData:6532006}}],Pose:{Head:[0f,180f,0f]}}
execute if block ~ ~ ~ furnace[facing=west] run summon armor_stand ~ ~ ~ {Silent:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["tta.block","tta.block_5t","tta.block.alchemy_table","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:barrel",Count:1b,tag:{CustomModelData:6532006}}],Pose:{Head:[0f,-90f,0f]}}
setblock ~ ~ ~ barrel{CustomName:'[{"text":"\\uc000\\uc001\\uc002","font":"tta:alchemy_table","color":"white"},{"translate":"tta.block.alchemy_table","font":"minecraft:default","italic":false,"color":"#3F3F3F"}]'}