#-------------------------------------------------------------#
#
# Controls the Werewolf
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.temp2 matches 13 run function tta:entity/monster/werewolf/anim/13
execute unless score @s monkeyhue.temp2 matches 13 run scoreboard players reset @s monkeyhue.time4
execute unless score @s monkeyhue.temp2 matches 13 run scoreboard players set @s monkeyhue.temp2 13

#Attack
execute facing entity @p[gamemode=!creative,gamemode=!spectator] feet run teleport @s ^ ^ ^1.5 ~180 ~

execute unless block ^ ^3 ^-2.5 #tta:werewolf_passable run scoreboard players set @s monkeyhue.entity.AIState 14
execute unless block ^ ^3 ^-2.5 #tta:werewolf_passable run scoreboard players set @s monkeyhue.entity.AIState 14
execute unless block ^ ^3 ^-1.5 #tta:werewolf_passable run scoreboard players set @s monkeyhue.entity.AIState 14
execute unless block ^ ^3 ^-1.5 #tta:werewolf_passable run scoreboard players set @s monkeyhue.entity.AIState 14
execute unless block ^ ^3 ^-0.5 #tta:werewolf_passable run scoreboard players set @s monkeyhue.entity.AIState 14
execute unless block ^ ^3 ^-0.5 #tta:werewolf_passable run scoreboard players set @s monkeyhue.entity.AIState 14

execute unless block ^ ^4 ^-2.5 #tta:werewolf_passable run scoreboard players set @s monkeyhue.entity.AIState 14
execute unless block ^ ^4 ^-2.5 #tta:werewolf_passable run scoreboard players set @s monkeyhue.entity.AIState 14
execute unless block ^ ^4 ^-1.5 #tta:werewolf_passable run scoreboard players set @s monkeyhue.entity.AIState 14
execute unless block ^ ^4 ^-1.5 #tta:werewolf_passable run scoreboard players set @s monkeyhue.entity.AIState 14
execute unless block ^ ^4 ^-0.5 #tta:werewolf_passable run scoreboard players set @s monkeyhue.entity.AIState 14
execute unless block ^ ^4 ^-0.5 #tta:werewolf_passable run scoreboard players set @s monkeyhue.entity.AIState 14

execute positioned ^ ^1 ^-1 if entity @a[distance=..3] run scoreboard players set @s monkeyhue.entity.AIState 14