#-------------------------------------------------------------#
#
# Controls the Garlic Mutant's hitboxes
#
#-------------------------------------------------------------#

function tta:entity/hitbox/werewolf/repos_pre

execute if entity @s[tag=tta.entity.hitbox.werewolf.walker] if score @e[type=marker,tag=tta.entity.werewolf,limit=1,sort=nearest] monkeyhue.temp9 = @s monkeyhue.temp9 run function tta:entity/hitbox/werewolf/walker

execute if entity @s[nbt={HurtTime:9s}] run function tta:entity/hitbox/werewolf/hurt