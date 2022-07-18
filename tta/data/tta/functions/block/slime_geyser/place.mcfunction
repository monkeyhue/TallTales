#-------------------------------------------------------------#
#
# Places an Alchemy Table
#
#-------------------------------------------------------------#

execute if block ~ ~ ~ furnace run summon armor_stand ~ ~ ~ {Silent:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["tta.block","tta.block_20t","tta.block.slime_geyser","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:barrel",Count:1b,tag:{CustomModelData:6532008}}],Pose:{Head:[0f,0f,0f]}}

setblock ~ ~ ~ obsidian
playsound minecraft:block.tuff.place block @a ~ ~ ~ 1 0.5
playsound minecraft:block.honey_block.place block @a ~ ~ ~ 0.5 1