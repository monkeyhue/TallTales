tag @s remove new
data modify entity @s HandItems[0] set from entity @e[type=armor_stand,limit=1,sort=nearest,tag=tta.projectile.eye_laser] ArmorItems[0]
function tta:item/durability_alt
execute store result entity @s HandItems[0].tag.tta.item.durability.uses int 1 run scoreboard players get @e[type=armor_stand,limit=1,sort=nearest,tag=tta.projectile.eye_laser] monkeyhue.temp1
function tta:item/durability_alt

summon item ~ ~ ~ {PickupDelay:2,Tags:["tta.temp.eyeLaserDropped.item"],Item:{id:"minecraft:stone",Count:1b}}
data modify entity @e[type=item,limit=1,sort=nearest,tag=tta.temp.eyeLaserDropped.item] Item set from entity @e[type=armor_stand,limit=1,sort=nearest,tag=tta.temp.eyeLaserDropped] HandItems[0] 

execute as @p[scores={tta.player.laserEyesPlaced=1..}] at @s run function tta:entity/projectile/eye_laser/modify_player
kill @s