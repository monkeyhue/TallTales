#-------------------------------------------------------------#
#
# Re-leashes frogzilla
#
#-------------------------------------------------------------#

data merge entity @s {Leash:{UUID:[I;65320004,6532,6532,6532]},Leashed:1b}
kill @e[type=item,nbt={Item:{id:"minecraft:lead",Count:1b}},distance=0..32,limit=1,sort=nearest]