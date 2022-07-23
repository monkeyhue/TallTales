#-------------------------------------------------------------#
#
# Main function for the day Frogzilla will spawn
#
#-------------------------------------------------------------#

say he cometh sooneth

execute if score %tta.time.daytime monkeyhue.temp1 matches 12000.. run function tta:event/frogzilla/pre_2

execute unless score %tta.time.daytime monkeyhue.temp1 matches 12000.. run schedule function tta:event/frogzilla/pre_1 20t replace