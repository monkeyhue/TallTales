#-------------------------------------------------------------#
#
# Prepares to erupt the slime geyser
#
#-------------------------------------------------------------#

summon marker ~ ~ ~ {Tags:["tta.temp.getRandUUID"]}
execute store result score @s monkeyhue.time1 run data get entity @e[type=marker,limit=1,sort=nearest,tag=tta.temp.getRandUUID] UUID[0]
scoreboard players operation @s monkeyhue.time1 %= %4799 monkeyhue.temp1
scoreboard players set @s monkeyhue.block.var3 1
kill @e[type=marker,limit=1,sort=nearest,tag=tta.temp.getRandUUID]