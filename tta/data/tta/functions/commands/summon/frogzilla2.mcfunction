bossbar add tta:frogzilla2 "Frogzilla"
bossbar set tta:frogzilla2 color purple
bossbar set tta:frogzilla2 style notched_10
bossbar set tta:frogzilla2 max 6000

summon marker ^ ^6 ^16 {Tags:["tta.entity","smithed.strict","tta.entity.boss","tta.entity_20t","tta.entity.frogzilla2"],UUID:[I;65320001,6532,6532,6532]}

summon slime ~ ~ ~ {Silent:1b,NoAI:1b,Size:10,PersistenceRequired:1b,Tags:["smithed.entity","smithed.strict","tta.entity","tta.entity.hitbox","tta.entity.hitbox.frogzilla2","tta.entity.hitbox.frogzilla2.head"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b},{Id:13b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Health:1000f,Attributes:[{Name:generic.max_health,Base:1000},{Name:generic.armor,Base:10}],UUID:[I;65320002,6532,6532,6532]}

summon slime ~ ~ ~ {Silent:1b,NoAI:1b,Size:12,PersistenceRequired:1b,Tags:["smithed.entity","smithed.strict","tta.entity","tta.entity.hitbox","tta.entity.hitbox.frogzilla2","tta.entity.hitbox.frogzilla2.chest"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b},{Id:13b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Health:1000f,Attributes:[{Name:generic.max_health,Base:1000},{Name:generic.armor,Base:16}],UUID:[I;65320003,6532,6532,6532]}

summon slime ~ ~ ~ {Silent:1b,NoAI:1b,Size:18,PersistenceRequired:1b,Tags:["smithed.entity","smithed.strict","tta.entity","tta.entity.hitbox","tta.entity.hitbox.frogzilla2","tta.entity.hitbox.frogzilla2.belly"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b},{Id:13b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Health:1000f,Attributes:[{Name:generic.max_health,Base:1000},{Name:generic.armor,Base:16}],UUID:[I;65320004,6532,6532,6532]}

summon slime ~ ~ ~ {Silent:1b,NoAI:1b,Size:12,PersistenceRequired:1b,Tags:["smithed.entity","smithed.strict","tta.entity","tta.entity.hitbox","tta.entity.hitbox.frogzilla2","tta.entity.hitbox.frogzilla2.tail1"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b},{Id:13b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Health:1000f,Attributes:[{Name:generic.max_health,Base:1000},{Name:generic.armor,Base:10}],UUID:[I;65320005,6532,6532,6532]}

summon slime ~ ~ ~ {Silent:1b,NoAI:1b,Size:12,PersistenceRequired:1b,Tags:["smithed.entity","smithed.strict","tta.entity","tta.entity.hitbox","tta.entity.hitbox.frogzilla2","tta.entity.hitbox.frogzilla2.tail2"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b},{Id:13b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Health:1000f,Attributes:[{Name:generic.max_health,Base:1000},{Name:generic.armor,Base:10}],UUID:[I;65320006,6532,6532,6532]}

summon slime ~ ~ ~ {Silent:1b,NoAI:1b,Size:5,PersistenceRequired:1b,Tags:["smithed.entity","smithed.strict","tta.entity","tta.entity.hitbox","tta.entity.hitbox.frogzilla2","tta.entity.hitbox.frogzilla2.eye","tta.entity.hitbox.frogzilla2.eye.left"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b},{Id:13b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Health:1000f,Attributes:[{Name:generic.max_health,Base:1000}],UUID:[I;65320007,6532,6532,6532]}

summon slime ~ ~ ~ {Silent:1b,NoAI:1b,Size:5,PersistenceRequired:1b,Tags:["smithed.entity","smithed.strict","tta.entity","tta.entity.hitbox","tta.entity.hitbox.frogzilla2","tta.entity.hitbox.frogzilla2.eye","tta.entity.hitbox.frogzilla2.eye.right"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b},{Id:13b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Health:1000f,Attributes:[{Name:generic.max_health,Base:1000}],UUID:[I;65320008,6532,6532,6532]}

summon wither_skeleton ~ ~8 ~ {Silent:1b,Invulnerable:1b,NoAI:1b,PersistenceRequired:1b,Tags:["smithed.entity","global.ignore","smithed.strict","tta.entity","tta.entity.hitbox","tta.entity.hitbox.frogzilla2","tta.render.frogzilla"],ArmorItems:[{},{},{},{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:6532001}}],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b},{Id:13b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Leashed:1b,Leash:{UUID:[I;65320004,6532,6532,6532]},Health:1000f,Attributes:[{Name:generic.max_health,Base:1000}],UUID:[I;65320009,6532,6532,6532]}