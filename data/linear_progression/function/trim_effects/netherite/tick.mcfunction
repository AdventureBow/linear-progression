# Netherite — knockback resist + full-trim fire resistance
execute unless predicate linear_progression:trim_effects/netherite/any if entity @s[tag=!netherite_head,tag=!netherite_chest,tag=!netherite_legs,tag=!netherite_feet] run return fail

execute if predicate linear_progression:trim_effects/netherite/any run function linear_progression:trim_effects/netherite/particle
execute if entity @s[tag=!netherite_head] if predicate linear_progression:trim_effects/netherite/head run function linear_progression:trim_effects/netherite/apply
execute if entity @s[tag=!netherite_chest] if predicate linear_progression:trim_effects/netherite/chest run function linear_progression:trim_effects/netherite/apply
execute if entity @s[tag=!netherite_legs] if predicate linear_progression:trim_effects/netherite/legs run function linear_progression:trim_effects/netherite/apply
execute if entity @s[tag=!netherite_feet] if predicate linear_progression:trim_effects/netherite/feet run function linear_progression:trim_effects/netherite/apply
execute if predicate linear_progression:trim_effects/netherite/head if predicate linear_progression:trim_effects/netherite/chest if predicate linear_progression:trim_effects/netherite/legs if predicate linear_progression:trim_effects/netherite/feet run function linear_progression:trim_effects/netherite/fire_resistance
execute if entity @s[tag=netherite_head] unless predicate linear_progression:trim_effects/netherite/head run function linear_progression:trim_effects/netherite/remove
execute if entity @s[tag=netherite_chest] unless predicate linear_progression:trim_effects/netherite/chest run function linear_progression:trim_effects/netherite/remove
execute if entity @s[tag=netherite_legs] unless predicate linear_progression:trim_effects/netherite/legs run function linear_progression:trim_effects/netherite/remove
execute if entity @s[tag=netherite_feet] unless predicate linear_progression:trim_effects/netherite/feet run function linear_progression:trim_effects/netherite/remove
