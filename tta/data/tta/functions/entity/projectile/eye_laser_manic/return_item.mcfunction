tag @s remove new
data modify entity @s HandItems[0] set from entity @e[type=armor_stand,limit=1,sort=nearest,tag=tta.projectile.eye_manic] ArmorItems[0]
function tta:item/durability_alt
execute store result entity @s HandItems[0].tag.tta.item.durability.uses int 1 run scoreboard players get @e[type=armor_stand,limit=1,sort=nearest,tag=tta.projectile.eye_manic] monkeyhue.temp1
function tta:item/durability_alt

summon item ~ ~ ~ {PickupDelay:2,Tags:["tta.temp.eyeManicDropped.item"],Item:{id:"minecraft:stone",Count:1b}}
data modify entity @e[type=item,limit=1,sort=nearest,tag=tta.temp.eyeManicDropped.item] Item set from entity @e[type=armor_stand,limit=1,sort=nearest,tag=tta.temp.eyeManicDropped] HandItems[0] 

execute as @p[scores={tta.player.manicEyesPlaced=1..}] at @s run function tta:entity/projectile/eye_laser_manic/modify_player
kill @s