#-------------------------------------------------------------#
#
# Prepares to erupt the slime geyser
#
#-------------------------------------------------------------#

#Tick Timer
scoreboard players remove @s monkeyhue.time1 1
execute if score @s monkeyhue.time1 matches ..0 run function tta:block/slime_geyser/event/erupt_pre