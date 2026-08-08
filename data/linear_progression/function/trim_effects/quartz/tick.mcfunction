# Quartz — max health
execute unless predicate linear_progression:trim_effects/quartz/any if entity @s[tag=!quartz_head,tag=!quartz_chest,tag=!quartz_legs,tag=!quartz_feet] run return fail

execute if predicate linear_progression:trim_effects/quartz/any run function linear_progression:trim_effects/quartz/particle
execute if entity @s[tag=!quartz_head] if predicate linear_progression:trim_effects/quartz/head run function linear_progression:trim_effects/quartz/apply
execute if entity @s[tag=!quartz_chest] if predicate linear_progression:trim_effects/quartz/chest run function linear_progression:trim_effects/quartz/apply
execute if entity @s[tag=!quartz_legs] if predicate linear_progression:trim_effects/quartz/legs run function linear_progression:trim_effects/quartz/apply
execute if entity @s[tag=!quartz_feet] if predicate linear_progression:trim_effects/quartz/feet run function linear_progression:trim_effects/quartz/apply
execute if entity @s[tag=quartz_head] unless predicate linear_progression:trim_effects/quartz/head run function linear_progression:trim_effects/quartz/remove
execute if entity @s[tag=quartz_chest] unless predicate linear_progression:trim_effects/quartz/chest run function linear_progression:trim_effects/quartz/remove
execute if entity @s[tag=quartz_legs] unless predicate linear_progression:trim_effects/quartz/legs run function linear_progression:trim_effects/quartz/remove
execute if entity @s[tag=quartz_feet] unless predicate linear_progression:trim_effects/quartz/feet run function linear_progression:trim_effects/quartz/remove
