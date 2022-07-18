#-------------------------------------------------------------#
#
# Places a garlic crop block
#
#-------------------------------------------------------------#

playsound minecraft:item.crop.plant block @a ~ ~ ~ 1 1
summon item_frame ~ ~ ~ {Silent:1b,Facing:1b,Invulnerable:1b,Invisible:1b,Fixed:1b,Tags:["tta.block","tta.block_5t","tta.block_20t","tta.block.crop","tta.block.crop.garlic","smithed.block"],Item:{id:"minecraft:barrel",Count:1b,tag:{CustomModelData:6532001}}}
setblock ~ ~ ~ wheat[age=0]
scoreboard players set @e[type=item_frame,sort=nearest,limit=1,tag=tta.block.crop.garlic] monkeyhue.block.var1 1
kill @s