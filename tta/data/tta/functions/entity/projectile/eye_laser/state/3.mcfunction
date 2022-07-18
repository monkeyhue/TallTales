#-------------------------------------------------------------#
#
# Controls an Oculuo Infernius
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.temp2 matches 3 run function tta:entity/projectile/eye_laser/anim/3
execute unless score @s monkeyhue.temp2 matches 3 run scoreboard players reset @s monkeyhue.time2
execute unless score @s monkeyhue.temp2 matches 3 run scoreboard players set @s monkeyhue.temp2 3

scoreboard players add @s monkeyhue.time2 1

execute if score @s monkeyhue.time2 matches 29 if score @s monkeyhue.temp1 matches 0.. run summon armor_stand ~ -100 ~ {Silent:1b,Invulnerable:1b,Invisible:1b,Marker:1b,Tags:["tta.temp.eyeLaserDropped","new"],HandItems:[{id:"minecraft:stone",Count:1b},{}]}
execute if score @s monkeyhue.time2 matches 29 if score @s monkeyhue.temp1 matches 0.. as @e[type=armor_stand,limit=1,sort=nearest,tag=tta.temp.eyeLaserDropped,tag=new] run function tta:entity/projectile/eye_laser/return_item
execute if score @s monkeyhue.time2 matches 29.. run kill @s