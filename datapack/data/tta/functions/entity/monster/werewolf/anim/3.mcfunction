# Init
execute if entity @s[tag=tta.render.werewolf.brown] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6532062
execute if entity @s[tag=tta.render.werewolf.black] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6532082
execute if entity @s[tag=tta.render.werewolf.white] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6532102
execute store result score %temp monkeyhue.temp1 run time query gametime
scoreboard players set %tta.animLength monkeyhue.temp1 9

# Get Autoanimation Frame
scoreboard players operation %temp monkeyhue.temp1 %= %24000 monkeyhue.temp1
scoreboard players operation %temp monkeyhue.temp1 %= %tta.animLength monkeyhue.temp1

#Append to GB
scoreboard players operation %sum monkeyhue.temp1 += %temp monkeyhue.temp1

#Update Data
execute store result entity @s ArmorItems[3].tag.display.color int 1 run scoreboard players get %sum monkeyhue.temp1
scoreboard players reset %temp monkeyhue.temp1
scoreboard players reset %sum monkeyhue.temp1
scoreboard players reset %tta.animLength monkeyhue.temp1