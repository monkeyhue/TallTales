# I turned the bossbar feature off since the Garlic Mutant is no longer considered a boss.
# The tta.entity.boss tag still stays however, as that is indicative of a monster entity.

#bossbar add tta:garlic_mutant "Garlic Mutant"
#bossbar set tta:garlic_mutant color green
#bossbar set tta:garlic_mutant style notched_6
#bossbar set tta:garlic_mutant max 600

summon marker ~ ~ ~ {Tags:["tta.entity","smithed.strict","tta.entity.boss","tta.entity_20t","tta.entity.garlic_mutant"]}

summon slime ~ ~ ~ {Size:1,Silent:1b,PersistenceRequired:1b,NoAI:1b,Health:1000f,Tags:["tta.entity_20t","smithed.strict","tta.entity","tta.entity.hitbox","tta.entity.hitbox.garlic_mutant","tta.entity.hitbox.garlic_mutant.eye"],ActiveEffects:[{Id:12b,Amplifier:0b,Duration:1000000,ShowParticles:0b},{Id:13b,Amplifier:0b,Duration:1000000,ShowParticles:0b},{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:1000},{Name:generic.armor,Base:10}],DeathLootTable:"tta:empty"}

summon slime ~ ~ ~ {Size:7,Silent:1b,PersistenceRequired:1b,NoAI:1b,Health:1000f,Tags:["tta.entity_20t","smithed.strict","tta.entity","tta.entity.hitbox","tta.entity.hitbox.garlic_mutant","tta.entity.hitbox.garlic_mutant.body"],ActiveEffects:[{Id:12b,Amplifier:0b,Duration:1000000,ShowParticles:0b},{Id:13b,Amplifier:0b,Duration:1000000,ShowParticles:0b},{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:1000},{Name:generic.armor,Base:10}],DeathLootTable:"tta:empty"}

summon wither_skeleton ~ ~1 ~ {Silent:1b,Invulnerable:1b,NoAI:1b,PersistenceRequired:1b,Tags:["tta.entity_20t","smithed.entity","global.ignore","smithed.strict","tta.entity","tta.entity.hitbox","tta.entity.hitbox.garlic_mutant","tta.render.garlic_mutant"],ArmorItems:[{},{},{},{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:6532001}}],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b},{Id:13b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Leashed:1b,Health:1000f,Attributes:[{Name:generic.max_health,Base:1000}],Air:3000s}

data modify entity @e[type=wither_skeleton,sort=nearest,tag=tta.render.garlic_mutant,limit=1,distance=0..2] Leash.UUID set from entity @e[type=slime,limit=1,sort=nearest,tag=tta.entity.hitbox.garlic_mutant.body] UUID

execute as @e[type=#tta:forced_mobs,tag=tta.entity.hitbox.garlic_mutant,limit=4,sort=nearest,tag=!switch] run function tta:entity/hitbox/garlic_mutant/init