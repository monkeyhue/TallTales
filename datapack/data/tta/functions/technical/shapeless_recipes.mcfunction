# Pressed Garlic
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if score count smithed.data matches 2 if data storage smithed.crafter:input {recipe:[{Count:1b,tag:{tta:{item:{id:12}}}},{Count:3b,tag:{tta:{item:{id:1}}}}]} run loot replace block ~ ~ ~ container.16 loot tta:item/pressed_garlic

# Silver Ingot
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if score count smithed.data matches 1 if data storage smithed.crafter:input {recipe:[{Count:9b,tag:{tta:{item:{id:9}}}}]} run loot replace block ~ ~ ~ container.16 loot tta:item/silver_ingot

# Silver Nugget
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if score count smithed.data matches 1 if data storage smithed.crafter:input {recipe:[{Count:1b,tag:{tta:{item:{id:8}}}}]} run loot replace block ~ ~ ~ container.16 loot tta:item/silver_nugget_9