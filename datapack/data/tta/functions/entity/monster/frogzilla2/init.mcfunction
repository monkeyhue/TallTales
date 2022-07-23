bossbar add tta:frogzilla2 "Frogzilla"
bossbar set tta:frogzilla2 color purple
bossbar set tta:frogzilla2 style notched_10
bossbar set tta:frogzilla2 max 6000
scoreboard players set @s monkeyhue.entity.customHealth 6000
scoreboard players set @s monkeyhue.entity.AIState 11
execute store result score @s monkeyhue.time9 run time query gametime
scoreboard players add @s monkeyhue.time9 120000