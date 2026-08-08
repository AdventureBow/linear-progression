# Diamond — armor + toughness
execute unless predicate linear_progression:trim_effects/diamond/any if entity @s[tag=!diamond_head,tag=!diamond_chest,tag=!diamond_legs,tag=!diamond_feet] run return fail

execute if predicate linear_progression:trim_effects/diamond/any run function linear_progression:trim_effects/diamond/particle
execute if entity @s[tag=!diamond_head] if predicate linear_progression:trim_effects/diamond/head run function linear_progression:trim_effects/diamond/apply
execute if entity @s[tag=!diamond_chest] if predicate linear_progression:trim_effects/diamond/chest run function linear_progression:trim_effects/diamond/apply
execute if entity @s[tag=!diamond_legs] if predicate linear_progression:trim_effects/diamond/legs run function linear_progression:trim_effects/diamond/apply
execute if entity @s[tag=!diamond_feet] if predicate linear_progression:trim_effects/diamond/feet run function linear_progression:trim_effects/diamond/apply
execute if entity @s[tag=diamond_head] unless predicate linear_progression:trim_effects/diamond/head run function linear_progression:trim_effects/diamond/remove
execute if entity @s[tag=diamond_chest] unless predicate linear_progression:trim_effects/diamond/chest run function linear_progression:trim_effects/diamond/remove
execute if entity @s[tag=diamond_legs] unless predicate linear_progression:trim_effects/diamond/legs run function linear_progression:trim_effects/diamond/remove
execute if entity @s[tag=diamond_feet] unless predicate linear_progression:trim_effects/diamond/feet run function linear_progression:trim_effects/diamond/remove
