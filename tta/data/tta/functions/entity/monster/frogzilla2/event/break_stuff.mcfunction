#-------------------------------------------------------------#
#
# Breaks blocks when Frogzilla is around.
#
#-------------------------------------------------------------#

execute if block ~ ~-1 ~ farmland run fill ~-4 ~-2 ~-4 ~4 ~1 ~4 dirt replace farmland
#execute if block ~ ~-1 ~ grass_block run fill ~-2 ~-2 ~-3 ~3 ~1 ~3 dirt_path replace grass_block

execute if block ~ ~ ~ #tta:frogzilla_breakable run setblock ~ ~ ~ air destroy
execute if block ~ ~ ~1 #tta:frogzilla_breakable run setblock ~ ~ ~1 air destroy
execute if block ~ ~ ~2 #tta:frogzilla_breakable run setblock ~ ~ ~2 air destroy
execute if block ~ ~ ~3 #tta:frogzilla_breakable run setblock ~ ~ ~3 air destroy
execute if block ~1 ~ ~ #tta:frogzilla_breakable run setblock ~1 ~ ~ air destroy
execute if block ~1 ~ ~1 #tta:frogzilla_breakable run setblock ~1 ~ ~1 air destroy
execute if block ~1 ~ ~2 #tta:frogzilla_breakable run setblock ~1 ~ ~2 air destroy
execute if block ~1 ~ ~3 #tta:frogzilla_breakable run setblock ~1 ~ ~3 air destroy
execute if block ~2 ~ ~ #tta:frogzilla_breakable run setblock ~2 ~ ~ air destroy
execute if block ~2 ~ ~1 #tta:frogzilla_breakable run setblock ~2 ~ ~1 air destroy
execute if block ~2 ~ ~2 #tta:frogzilla_breakable run setblock ~2 ~ ~2 air destroy
execute if block ~2 ~ ~3 #tta:frogzilla_breakable run setblock ~2 ~ ~3 air destroy
execute if block ~3 ~ ~ #tta:frogzilla_breakable run setblock ~3 ~ ~ air destroy
execute if block ~3 ~ ~1 #tta:frogzilla_breakable run setblock ~3 ~ ~1 air destroy
execute if block ~3 ~ ~2 #tta:frogzilla_breakable run setblock ~3 ~ ~2 air destroy
execute if block ~3 ~ ~3 #tta:frogzilla_breakable run setblock ~3 ~ ~3 air destroy

execute if block ~ ~ ~-1 #tta:frogzilla_breakable run setblock ~ ~ ~-1 air destroy
execute if block ~ ~ ~-2 #tta:frogzilla_breakable run setblock ~ ~ ~-2 air destroy
execute if block ~ ~ ~-3 #tta:frogzilla_breakable run setblock ~ ~ ~-3 air destroy
execute if block ~1 ~ ~-1 #tta:frogzilla_breakable run setblock ~1 ~ ~-1 air destroy
execute if block ~1 ~ ~-2 #tta:frogzilla_breakable run setblock ~1 ~ ~-2 air destroy
execute if block ~1 ~ ~-3 #tta:frogzilla_breakable run setblock ~1 ~ ~-3 air destroy
execute if block ~2 ~ ~-1 #tta:frogzilla_breakable run setblock ~2 ~ ~-1 air destroy
execute if block ~2 ~ ~-2 #tta:frogzilla_breakable run setblock ~2 ~ ~-2 air destroy
execute if block ~2 ~ ~-3 #tta:frogzilla_breakable run setblock ~2 ~ ~-3 air destroy
execute if block ~3 ~ ~-1 #tta:frogzilla_breakable run setblock ~3 ~ ~-1 air destroy
execute if block ~3 ~ ~-2 #tta:frogzilla_breakable run setblock ~3 ~ ~-2 air destroy
execute if block ~3 ~ ~-3 #tta:frogzilla_breakable run setblock ~3 ~ ~-3 air destroy

execute if block ~-1 ~ ~-1 #tta:frogzilla_breakable run setblock ~-1 ~ ~-1 air destroy
execute if block ~-1 ~ ~-2 #tta:frogzilla_breakable run setblock ~-1 ~ ~-2 air destroy
execute if block ~-1 ~ ~-3 #tta:frogzilla_breakable run setblock ~-1 ~ ~-3 air destroy
execute if block ~-2 ~ ~-1 #tta:frogzilla_breakable run setblock ~-2 ~ ~-1 air destroy
execute if block ~-2 ~ ~-2 #tta:frogzilla_breakable run setblock ~-2 ~ ~-2 air destroy
execute if block ~-2 ~ ~-3 #tta:frogzilla_breakable run setblock ~-2 ~ ~-3 air destroy
execute if block ~-3 ~ ~-1 #tta:frogzilla_breakable run setblock ~-3 ~ ~-1 air destroy
execute if block ~-3 ~ ~-2 #tta:frogzilla_breakable run setblock ~-3 ~ ~-2 air destroy
execute if block ~-3 ~ ~-3 #tta:frogzilla_breakable run setblock ~-3 ~ ~-3 air destroy

execute if block ~-1 ~ ~ #tta:frogzilla_breakable run setblock ~-1 ~ ~ air destroy
execute if block ~-1 ~ ~1 #tta:frogzilla_breakable run setblock ~-1 ~ ~1 air destroy
execute if block ~-1 ~ ~2 #tta:frogzilla_breakable run setblock ~-1 ~ ~2 air destroy
execute if block ~-1 ~ ~3 #tta:frogzilla_breakable run setblock ~-1 ~ ~3 air destroy
execute if block ~-2 ~ ~ #tta:frogzilla_breakable run setblock ~-2 ~ ~ air destroy
execute if block ~-2 ~ ~1 #tta:frogzilla_breakable run setblock ~-2 ~ ~1 air destroy
execute if block ~-2 ~ ~2 #tta:frogzilla_breakable run setblock ~-2 ~ ~2 air destroy
execute if block ~-2 ~ ~3 #tta:frogzilla_breakable run setblock ~-2 ~ ~3 air destroy
execute if block ~-3 ~ ~ #tta:frogzilla_breakable run setblock ~-3 ~ ~ air destroy
execute if block ~-3 ~ ~1 #tta:frogzilla_breakable run setblock ~-3 ~ ~1 air destroy
execute if block ~-3 ~ ~2 #tta:frogzilla_breakable run setblock ~-3 ~ ~2 air destroy
execute if block ~-3 ~ ~3 #tta:frogzilla_breakable run setblock ~-3 ~ ~3 air destroy