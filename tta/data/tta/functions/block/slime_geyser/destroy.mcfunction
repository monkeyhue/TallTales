#-------------------------------------------------------------#
#
# Destroys the Toxic Geyser
#
#-------------------------------------------------------------#
stopsound @a[distance=0..10] block minecraft:block.stone.break
playsound minecraft:block.tuff.break block @a ~ ~ ~ 1 0.5
playsound minecraft:block.honey_block.break block @a ~ ~ ~ 0.5 1

kill @e[type=item,distance=..0.5,limit=1,sort=nearest,nbt={Item:{id:"minecraft:obsidian",Count:1b}}]
particle item barrel{CustomModelData:6532008} ~ ~ ~ -0.425 -0.425 -0.425 0.1 40 force
loot spawn ~ ~ ~ loot tta:block/slime_geyser/slime_geyser
execute if score @s monkeyhue.block.var2 matches 1.. run function tta:block/slime_geyser/destroy_contents
scoreboard players reset @s
kill @s