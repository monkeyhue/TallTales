#-------------------------------------------------------------#
#
# This is a main function of Tall Tales.
# Runs every second (200 ticks).
#
# Enjoy Tall Tales, made by Monkeyhue!
#
#-------------------------------------------------------------#

# Controls day timers
execute store result score %tta.time.day monkeyhue.temp1 run time query day
execute store result score %tta.time.daytime monkeyhue.temp1 run time query daytime

function tta:event/main

schedule function tta:technical/main_200t 200t