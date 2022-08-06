#-------------------------------------------------------------#
#
# Spawns some werewolves later on in the night
#
#-------------------------------------------------------------#

scoreboard players set %tta.global.currentSubEventID monkeyhue.temp1 1
execute as @a run scoreboard players add %tta.currentPlayerCount monkeyhue.temp1 1
execute if score %tta.currentPlayerCount monkeyhue.temp1 matches 1..2 run function tta:event/werewolf/pre_1
execute if score %tta.currentPlayerCount monkeyhue.temp1 matches 2..4 run function tta:event/werewolf/pre_2
execute if score %tta.currentPlayerCount monkeyhue.temp1 matches 4..7 run function tta:event/werewolf/pre_3
execute if score %tta.currentPlayerCount monkeyhue.temp1 matches 7..10 run function tta:event/werewolf/pre_4
execute if score %tta.currentPlayerCount monkeyhue.temp1 matches 10..16 run function tta:event/werewolf/pre_5
execute if score %tta.currentPlayerCount monkeyhue.temp1 matches 16.. run function tta:event/werewolf/pre_6