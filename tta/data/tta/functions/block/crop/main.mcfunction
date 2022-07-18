#-------------------------------------------------------------#
#
# Controls crops blocks' behavior, primarily when destroyed.
#
#-------------------------------------------------------------#

# Garlic
#execute if entity @s[tag=tta.block.crop.garlic] if score @s monkeyhue.block.var1 matches 5 if block ~ ~ ~ wheat unless block ~ ~ ~ wheat[age=1] run function tta:block/crop/garlic/mature_age
execute if entity @s[tag=tta.block.crop.garlic] unless block ~ ~ ~ wheat run function tta:block/crop/garlic/destroy