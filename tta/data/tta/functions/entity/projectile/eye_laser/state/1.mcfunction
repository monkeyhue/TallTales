#-------------------------------------------------------------#
#
# Controls an Oculuo Infernius
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.temp2 matches 1 run function tta:entity/projectile/eye_laser/anim/1
execute unless score @s monkeyhue.temp2 matches 1 run scoreboard players reset @s monkeyhue.time2
execute unless score @s monkeyhue.temp2 matches 1 run scoreboard players set @s monkeyhue.temp2 1

scoreboard players add @s monkeyhue.time2 1

execute if block ^ ^ ^-1 #tta:airlike facing entity @e[type=#tta:hostiles,limit=1,distance=6..8,sort=nearest] eyes run teleport @s ^ ^0.05 ^0.125 ~180 0
execute if block ^ ^ ^-1 #tta:airlike facing entity @e[type=#tta:hostiles,limit=1,distance=8..,sort=nearest] eyes run teleport @s ^ ^0.05 ^0.25 ~180 0
execute unless block ^ ^ ^-1 #tta:airlike facing entity @e[type=#tta:hostiles,limit=1,distance=8..,sort=nearest] eyes run teleport @s ^ ^0.25 ^0.25 ~180 0
execute if block ^ ^ ^1 #tta:airlike if entity @e[type=#tta:hostiles,limit=1,distance=..4,sort=nearest] facing entity @e[type=#tta:hostiles,limit=1,sort=nearest,distance=..4] eyes run teleport @s ^ ^ ^-0.125 ~180 0

execute if entity @e[type=#tta:hostiles,distance=..11] run scoreboard players set @s monkeyhue.entity.AIState 2