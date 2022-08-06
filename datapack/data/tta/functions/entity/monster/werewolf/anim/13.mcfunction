# Init
execute if entity @s[tag=tta.render.werewolf.brown] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6532065
execute if entity @s[tag=tta.render.werewolf.black] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6532085
execute if entity @s[tag=tta.render.werewolf.white] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6532105

#Update Data
execute store result entity @s ArmorItems[3].tag.display.color int 1 run scoreboard players get %sum monkeyhue.temp1