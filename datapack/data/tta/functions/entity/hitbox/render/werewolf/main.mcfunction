execute store result score @s monkeyhue.temp1 run data get storage tta:root temp.entityAIState.werewolf

execute if score @s monkeyhue.temp1 = @e[type=marker,limit=1,sort=nearest,tag=tta.entity.werewolf,distance=..1] monkeyhue.entity.AIState run function tta:entity/hitbox/render/werewolf/anim