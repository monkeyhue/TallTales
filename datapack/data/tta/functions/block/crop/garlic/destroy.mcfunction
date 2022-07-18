execute if score @s monkeyhue.block.var1 matches 1 run particle item barrel{CustomModelData:6532001} ~ ~-0.2 ~ 0.1 0.1 0.1 0.1 40
execute if score @s monkeyhue.block.var1 matches 2..4 run particle item barrel{CustomModelData:6532003} ~ ~-0.2 ~ 0.1 0.1 0.1 0.1 40
execute if score @s monkeyhue.block.var1 matches 5.. run particle item barrel{CustomModelData:6532005} ~ ~-0.2 ~ 0.1 0.1 0.1 0.1 40

kill @e[type=item,nbt={Item:{id:"minecraft:wheat_seeds"}},sort=nearest,limit=2,distance=..1.5]
execute unless score @s monkeyhue.block.var1 matches 5 run loot spawn ~ ~ ~ loot tta:block/garlic/stage0
execute if score @s monkeyhue.block.var1 matches 5 run loot spawn ~ ~ ~ loot tta:block/garlic/stage4

kill @s