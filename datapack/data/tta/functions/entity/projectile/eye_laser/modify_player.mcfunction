teleport @e[type=item,limit=1,sort=nearest,tag=tta.temp.eyeLaserDropped.item] @s
scoreboard players remove @s tta.player.laserEyesPlaced 1
execute if score @s tta.player.laserEyesPlaced matches ..0 run scoreboard players reset @s tta.player.laserEyesPlaced