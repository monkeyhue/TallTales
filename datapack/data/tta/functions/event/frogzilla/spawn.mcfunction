#-------------------------------------------------------------#
#
# Spawns frogzilla. Good luck!
#
#-------------------------------------------------------------#

function tta:event/frogzilla/fx/tag_check
execute at @p[tag=tta.temp.frogzillaTargeted] run summon marker ~ ~ ~ {Tags:['tta.temp','tta.projectile','tta.temp.frogzillaSpawner']}
execute at @p[tag=tta.temp.frogzillaTargeted] run advancement grant @a[distance=..128] only tta:main/frogzilla_spawn