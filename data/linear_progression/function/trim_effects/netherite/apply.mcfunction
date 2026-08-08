# Knockback only: +0.15/piece (0.6 full set). With full gold armor (+0.4 item) = 1.0 total.
# FR still uses tags / armor_effects mix.
execute if predicate linear_progression:trim_effects/netherite/head run attribute @s knockback_resistance modifier add netherite_head 0.15 add_value
execute if predicate linear_progression:trim_effects/netherite/chest run attribute @s knockback_resistance modifier add netherite_chest 0.15 add_value
execute if predicate linear_progression:trim_effects/netherite/legs run attribute @s knockback_resistance modifier add netherite_legs 0.15 add_value
execute if predicate linear_progression:trim_effects/netherite/feet run attribute @s knockback_resistance modifier add netherite_feet 0.15 add_value
execute if predicate linear_progression:trim_effects/netherite/head run tag @s add netherite_head
execute if predicate linear_progression:trim_effects/netherite/chest run tag @s add netherite_chest
execute if predicate linear_progression:trim_effects/netherite/legs run tag @s add netherite_legs
execute if predicate linear_progression:trim_effects/netherite/feet run tag @s add netherite_feet
