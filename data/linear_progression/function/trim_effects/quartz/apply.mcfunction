# Quartz — +2.5 max health per piece, then fill to new max (mobs/players at full HP).
execute if predicate linear_progression:trim_effects/quartz/head run attribute @s max_health modifier add quartz_head 2.5 add_value
execute if predicate linear_progression:trim_effects/quartz/chest run attribute @s max_health modifier add quartz_chest 2.5 add_value
execute if predicate linear_progression:trim_effects/quartz/legs run attribute @s max_health modifier add quartz_legs 2.5 add_value
execute if predicate linear_progression:trim_effects/quartz/feet run attribute @s max_health modifier add quartz_feet 2.5 add_value
execute if predicate linear_progression:trim_effects/quartz/head run tag @s add quartz_head
execute if predicate linear_progression:trim_effects/quartz/chest run tag @s add quartz_chest
execute if predicate linear_progression:trim_effects/quartz/legs run tag @s add quartz_legs
execute if predicate linear_progression:trim_effects/quartz/feet run tag @s add quartz_feet

# Heal up to the new max health (quartz bonus included)
execute store result entity @s Health float 1 run attribute @s minecraft:max_health get
