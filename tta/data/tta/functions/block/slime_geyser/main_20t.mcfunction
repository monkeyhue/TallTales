#-------------------------------------------------------------#
#
# Counts to the next item generation. Slower to cause less lag
#
#-------------------------------------------------------------#

execute unless score @s monkeyhue.block.var3 matches 1.. run scoreboard players add @s monkeyhue.block.var1 1
execute if score @s monkeyhue.block.var1 matches 240.. run function tta:block/slime_geyser/event/increment_item