teleport @e[type=item,limit=1,sort=nearest,tag=tta.temp.eyeManicDropped.item] @s
scoreboard players remove @s tta.player.manicEyesPlaced 1
execute if score @s tta.player.manicEyesPlaced matches ..0 run scoreboard players reset @s tta.player.manicEyesPlaced