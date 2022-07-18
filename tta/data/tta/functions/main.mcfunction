#-------------------------------------------------------------#
#
# This is the main function of Tall Tales.
# Runs every tick.
#
# Enjoy Tall Tales, made by Monkeyhue!
#
# Current Version: 0.3
#
#-------------------------------------------------------------#

execute as @a run function tta:entity/player/main

# All entity commands handled here
execute as @e[type=item_frame,tag=tta.block] at @s run function tta:block/main
execute as @e[type=armor_stand,tag=tta.block] at @s run function tta:block/main
execute as @e[type=#tta:forced_mobs,tag=tta.entity,tag=smithed.strict] at @s run function tta:entity/main_forced

# Projectiles
execute as @e[type=snowball,tag=tta.projectile,limit=100] at @s run function tta:entity/projectile/thrown/main
execute as @e[type=armor_stand,tag=tta.projectile,limit=100] at @s run function tta:entity/projectile/main
execute as @e[type=marker,tag=tta.projectile,limit=100] at @s run function tta:entity/projectile/main

schedule function tta:main 1t

#------------------------ Attention! -------------------------#
#
# For the Smithed council members reading this, hello!
#
# To make the review of the codebase faster, I've highlighted
# some of this pack's many functions and processes below.
# If you have any questions or serious issues arise within
# this datapack, feel free to contact me as soon as possible.
#
#--------------------- Notable Functions: --------------------#
#
# tta:main, tta:main_2t, tta:main_5t, tta:main_20t
#    These are my main functions. Not much more to say
#    other than that. My one-tick main is schedule
#    based and will run with #minecraft:load.
#
# tta:entity/monster/frogzilla2/main
#    This function controls Frogzilla's main behavior. This
#    function is noted specifically as it's the most intensive
#    entity in the entire datapack, and I figured it would be
#    best to check it out for any problems or compatibility
#    issues. I'm certain there may be a missing smithed tag
#    or two present, so make sure to look through that one
#    and his states carefully.
#
# tta:item/durability
#    I'm going to be completely honest here, this one I dropped
#    in straight from my library, MonkeyLib. I was too lazy to
#    upload the full lib to smithed first, which is why you may
#    see some things namespaced as monkeyhue instead of tta.
#    This durability system is lifted straight from Monkeylib
#    and works just fine, but is kind of sloppy. I may move
#    this to smithed durability later on, but I feel the
#    MonkeyLib version works better for my datapacks' items.
#
# tta:block/crop/main_2t
#    This function, or this entire directory rather, is for
#    custom crops. They perform well in smaller numbers, but
#    begin to take a toll on the mspt once they number the
#    thousands (about a 5-6 mspt toll on my computer with
#    1000 instances).
#
# tta:damage/apply
#    Another instance of MonkeyLib content being pasted
#    directly into Tall Tales. This is my own custom
#    damage system, which I use strictly for non-player
#    entities. I will move this to MonkeyLib only
#    eventually.
#   
#-------------------------------------------------------------#