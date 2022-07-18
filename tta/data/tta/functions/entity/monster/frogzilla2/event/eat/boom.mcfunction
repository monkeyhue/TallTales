#-------------------------------------------------------------#
#
# Kills an explosive mob when eaten by Frogzilla
#
#-------------------------------------------------------------#

execute if entity @s[type=creeper,nbt=!{powered:1b}] run scoreboard players set @e[type=marker,tag=tta.entity.frogzilla2,limit=1,sort=nearest] monkeyhue.temp9 150
execute if entity @s[type=tnt] run scoreboard players set @e[type=marker,tag=tta.entity.frogzilla2,limit=1,sort=nearest] monkeyhue.temp9 320
execute if entity @s[type=tnt_minecart] run scoreboard players set @e[type=marker,tag=tta.entity.frogzilla2,limit=1,sort=nearest] monkeyhue.temp9 320
execute if entity @s[type=creeper,nbt={powered:1b}] run scoreboard players set @e[type=marker,tag=tta.entity.frogzilla2,limit=1,sort=nearest] monkeyhue.temp9 500

tag @s remove tta.temp.frogzillaTargeted
tag @s remove tta.temp.eatingByFrogzilla

teleport @s ~ -110 ~
kill @s