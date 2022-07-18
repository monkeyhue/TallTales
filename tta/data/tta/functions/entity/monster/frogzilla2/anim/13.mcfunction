# Init
data modify entity @s ArmorItems[3].tag.CustomModelData set value 6532014

#Append rotation to R
execute store result score %temp monkeyhue.temp1 run data get entity @s Rotation[0] 0.708333333
scoreboard players operation %temp monkeyhue.temp1 %= %256 monkeyhue.temp1
scoreboard players operation %temp monkeyhue.temp1 *= %256 monkeyhue.temp1
scoreboard players operation %temp monkeyhue.temp1 *= %256 monkeyhue.temp1
scoreboard players operation %sum monkeyhue.temp1 += %temp monkeyhue.temp1

#Update Data
execute store result entity @s ArmorItems[3].tag.display.color int 1 run scoreboard players get %sum monkeyhue.temp1
scoreboard players reset %temp monkeyhue.temp1
scoreboard players reset %sum monkeyhue.temp1