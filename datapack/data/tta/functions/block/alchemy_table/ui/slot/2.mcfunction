execute at @p run summon item ~ ~ ~ {PickupDelay:1,Tags:["tta.block.returnedItem","new"],Item:{id:"minecraft:stone",Count:1b}}
execute as @e[type=item,tag=tta.block.returnedItem,tag=new,limit=1,sort=nearest] run data modify entity @s Item set from storage tta:block alchemy_table.Items.[{Slot:2b}]
execute as @e[type=item,tag=tta.block.returnedItem,tag=new,limit=1,sort=nearest] run tag @s remove new
data remove storage tta:block alchemy_table.Items.[{Slot:2b}]