data modify entity @s data.Item.tag.CustomModelData set value 6532003
summon item ~ ~0.1 ~ {Motion:[0.0,0.2,0.0],PickupDelay:10,Tags:["tta.temp.stakeDropped","new"],Item:{id:"minecraft:stone",Count:1b}}
data modify entity @e[type=item,limit=1,sort=nearest,tag=tta.temp.stakeDropped,tag=new] Item set from entity @s data.Item
tag @e[type=item,limit=1,sort=nearest,tag=tta.temp.stakeDropped,tag=new] remove new