#-------------------------------------------------------------#
#
# Controls the Alchemy Table interface
#
#-------------------------------------------------------------#

#var1: controls if the block is actively crafting and its output ID (-1 means invalid recipe)
#var2: controls if the block has active output in slot 7
#var5: controls current progress tick for crafting

data modify storage tta:block alchemy_table.Items set from block ~ ~ ~ Items

#Shiftclick Case
execute if data storage tta:block alchemy_table.Items.[{Slot:0b}] run function tta:block/alchemy_table/ui/slot/0

#Remove Item
execute if data storage tta:block alchemy_table.Items.[{Slot:2b}] run function tta:block/alchemy_table/ui/slot/2
execute if data storage tta:block alchemy_table.Items.[{Slot:4b}] run function tta:block/alchemy_table/ui/slot/4
execute if data storage tta:block alchemy_table.Items.[{Slot:6b}] run function tta:block/alchemy_table/ui/slot/6
execute if data storage tta:block alchemy_table.Items.[{Slot:7b}] run function tta:block/alchemy_table/ui/slot/7
execute if data storage tta:block alchemy_table.Items.[{Slot:9b}] run function tta:block/alchemy_table/ui/slot/9
execute if data storage tta:block alchemy_table.Items.[{Slot:11b}] run function tta:block/alchemy_table/ui/slot/11
execute if data storage tta:block alchemy_table.Items.[{Slot:12b}] run function tta:block/alchemy_table/ui/slot/12
execute if data storage tta:block alchemy_table.Items.[{Slot:13b}] run function tta:block/alchemy_table/ui/slot/13
execute if data storage tta:block alchemy_table.Items.[{Slot:14b}] run function tta:block/alchemy_table/ui/slot/14
execute if data storage tta:block alchemy_table.Items.[{Slot:15b}] run function tta:block/alchemy_table/ui/slot/15
execute if data storage tta:block alchemy_table.Items.[{Slot:17b}] run function tta:block/alchemy_table/ui/slot/17
execute if data storage tta:block alchemy_table.Items.[{Slot:18b}] run function tta:block/alchemy_table/ui/slot/18
execute if data storage tta:block alchemy_table.Items.[{Slot:20b}] run function tta:block/alchemy_table/ui/slot/20
execute if data storage tta:block alchemy_table.Items.[{Slot:21b}] run function tta:block/alchemy_table/ui/slot/21
execute if data storage tta:block alchemy_table.Items.[{Slot:23b}] run function tta:block/alchemy_table/ui/slot/23
execute if data storage tta:block alchemy_table.Items.[{Slot:24b}] run function tta:block/alchemy_table/ui/slot/24
execute if data storage tta:block alchemy_table.Items.[{Slot:25b}] run function tta:block/alchemy_table/ui/slot/25
execute if data storage tta:block alchemy_table.Items.[{Slot:26b}] run function tta:block/alchemy_table/ui/slot/26

#Specific Item
execute if data storage tta:block alchemy_table.Items.[{Slot:3b}] unless data storage tta:block alchemy_table.Items.[{Slot:3b,tag:{tta:{item:{id:12}}}}] run function tta:block/alchemy_table/ui/slot/3
execute if data storage tta:block alchemy_table.Items.[{Slot:5b}] unless data storage tta:block alchemy_table.Items.[{Slot:5b,tag:{tta:{item:{id:13}}}}] run function tta:block/alchemy_table/ui/slot/5

#Input
execute if data storage tta:block alchemy_table.Items.[{Slot:1b}] unless data storage tta:block alchemy_table.Items.[{Slot:1b,tag:{tta:{item:{alchemy:1b}}}}] unless data storage tta:block alchemy_table.Items.[{Slot:1b,id:"glowstone_dust"}] unless data storage tta:block alchemy_table.Items.[{Slot:1b,id:"gunpowder"}] unless data storage tta:block alchemy_table.Items.[{Slot:1b,id:"blaze_rod"}] unless data storage tta:block alchemy_table.Items.[{Slot:1b,id:"blaze_powder"}] run function tta:block/alchemy_table/ui/slot/1

#Output
execute if score @s monkeyhue.block.var2 matches 0.. unless data storage tta:block alchemy_table.Items.[{Slot:16b}] run scoreboard players reset @s monkeyhue.block.var2
execute if data storage tta:block alchemy_table.Items.[{Slot:16b}] unless score @s monkeyhue.block.var2 matches 1.. run function tta:block/alchemy_table/ui/slot/16

#UI
execute if data storage tta:block alchemy_table.Items.[{Slot:8b}] unless score @s monkeyhue.block.var1 matches 1.. run function tta:block/alchemy_table/ui/slot/8

data modify block ~ ~ ~ Items set from storage tta:block alchemy_table.Items
data remove storage tta:block alchemy_table