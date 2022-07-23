# Silver Stake 1
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,id:"minecraft:air"},{Slot:1b,tag:{tta:{item:{id:8}}}},{Slot:2b,id:"minecraft:air"}],1:[{Slot:0b,tag:{tta:{item:{id:8}}}},{Slot:1b,id:"minecraft:air"},{Slot:2b,id:"minecraft:air"}]} if data storage smithed.crafter:input recipe{2:[]} run loot replace block ~ ~ ~ container.16 loot tta:item/silver_stake_16

# Silver Stake 2
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:air"},{Slot:2b,tag:{tta:{item:{id:8}}}}],1:[{Slot:0b,id:"minecraft:air"},{Slot:1b,tag:{tta:{item:{id:8}}}},{Slot:2b,id:"minecraft:air"}]} if data storage smithed.crafter:input recipe{2:[]} run loot replace block ~ ~ ~ container.16 loot tta:item/silver_stake_16

# Silver Stake 3
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{1:[{Slot:0b,id:"minecraft:air"},{Slot:1b,tag:{tta:{item:{id:8}}}},{Slot:2b,id:"minecraft:air"}],2:[{Slot:0b,tag:{tta:{item:{id:8}}}},{Slot:1b,id:"minecraft:air"},{Slot:2b,id:"minecraft:air"}]} if data storage smithed.crafter:input recipe{0:[]} run loot replace block ~ ~ ~ container.16 loot tta:item/silver_stake_16

# Silver Stake 4
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{1:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:air"},{Slot:2b,tag:{tta:{item:{id:8}}}}],2:[{Slot:0b,id:"minecraft:air"},{Slot:1b,tag:{tta:{item:{id:8}}}},{Slot:2b,id:"minecraft:air"}]} if data storage smithed.crafter:input recipe{0:[]} run loot replace block ~ ~ ~ container.16 loot tta:item/silver_stake_16

# Glass Jar 1
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,id:"minecraft:copper_ingot"},{Slot:1b,id:"minecraft:copper_ingot"},{Slot:2b,id:"minecraft:air"}],1:[{Slot:0b,id:"minecraft:glass"},{Slot:1b,id:"minecraft:glass"},{Slot:2b,id:"minecraft:air"}],2:[{Slot:0b,id:"minecraft:glass"},{Slot:1b,id:"minecraft:glass"},{Slot:2b,id:"minecraft:air"}]} run loot replace block ~ ~ ~ container.16 loot tta:item/glass_jar_2

# Glass Jar 2
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:copper_ingot"},{Slot:2b,id:"minecraft:copper_ingot"}],1:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:glass"},{Slot:2b,id:"minecraft:glass"}],2:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:glass"},{Slot:2b,id:"minecraft:glass"}]} run loot replace block ~ ~ ~ container.16 loot tta:item/glass_jar_2

# Silver Vial
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:input recipe{0:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:air"},{Slot:2b,item_tag:["#minecraft:wooden_buttons"]}],1:[{Slot:0b,id:"minecraft:air"},{Slot:1b,id:"minecraft:glass"},{Slot:2b,tag:{tta:{item:{id:9}}}}],2:[{Slot:0b,id:"minecraft:glass"},{Slot:1b,tag:{tta:{item:{id:9}}}},{Slot:2b,id:"minecraft:air"}]} run loot replace block ~ ~ ~ container.16 loot tta:item/silver_vial