#-------------------------------------------------------------#
#
# Detects for world events
#
#-------------------------------------------------------------#

execute store result score %tta.time.tempDay monkeyhue.temp1 run scoreboard players get %tta.time.day monkeyhue.temp1
scoreboard players operation %tta.time.tempDay monkeyhue.temp1 %= %22 monkeyhue.temp1
execute if score %tta.time.tempDay monkeyhue.temp1 matches 0 if score %tta.time.day monkeyhue.temp1 matches 20.. unless score %tta.global.currentEventID monkeyhue.temp1 matches 1 run function tta:event/frogzilla/init
scoreboard players reset %tta.time.tempDay monkeyhue.temp1