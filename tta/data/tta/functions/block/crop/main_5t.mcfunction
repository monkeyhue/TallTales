#-------------------------------------------------------------#
#
# Controls the crop's behavior every 5 ticks.
#
#-------------------------------------------------------------#

execute if entity @s[tag=tta.block.crop.garlic] unless block ~ ~ ~ wheat[age=0] unless score @s monkeyhue.block.var1 matches 5 run function tta:block/crop/garlic/age