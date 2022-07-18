#-------------------------------------------------------------#
#
# Controls projectile behavior
#
#-------------------------------------------------------------#

execute as @e[type=snowball,nbt={Item:{id:"minecraft:snowball",Count:1b,tag:{CustomModelData:6532001}}},limit=1,sort=nearest,distance=0..4] run function tta:entity/projectile/thrown/wooden_stake/init
execute as @e[type=snowball,nbt={Item:{id:"minecraft:snowball",Count:1b,tag:{CustomModelData:6532003}}},limit=1,sort=nearest,distance=0..4] run function tta:entity/projectile/thrown/silver_stake/init

scoreboard players add @s monkeyhue.time1 1