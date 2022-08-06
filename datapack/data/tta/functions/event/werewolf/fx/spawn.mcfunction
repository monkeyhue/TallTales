#-------------------------------------------------------------#
#
# Does the howl thing
#
#-------------------------------------------------------------#

playsound minecraft:entity.wolf.howl master @a ~ ~ ~ 4 0.9
summon marker ~ ~ ~ {Tags:['tta.temp','tta.projectile','tta.temp.werewolfSpawner']}

scoreboard players reset %tta.global.currentSubEventID