#-------------------------------------------------------------#
#
# Increments the eruption timer. This determines how
# many items are dropped and how severe the eruption is.
#
#-------------------------------------------------------------#

scoreboard players add @s monkeyhue.block.var2 1
scoreboard players reset @s monkeyhue.block.var1

execute if score @s monkeyhue.block.var2 matches 3..5 if predicate tta:rng/10 run function tta:block/slime_geyser/event/primed_pre
execute if score @s monkeyhue.block.var2 matches 5..9 if predicate tta:rng/25 run function tta:block/slime_geyser/event/primed_pre
execute if score @s monkeyhue.block.var2 matches 10.. run function tta:block/slime_geyser/event/primed_pre
