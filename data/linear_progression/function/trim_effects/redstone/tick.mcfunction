# Redstone — speed + step height
execute unless predicate linear_progression:trim_effects/redstone/any if entity @s[tag=!redstone_head,tag=!redstone_chest,tag=!redstone_legs,tag=!redstone_feet] run return fail

execute if predicate linear_progression:trim_effects/redstone/any run function linear_progression:trim_effects/redstone/particle
execute if entity @s[tag=!redstone_head] if predicate linear_progression:trim_effects/redstone/head run function linear_progression:trim_effects/redstone/apply
execute if entity @s[tag=!redstone_chest] if predicate linear_progression:trim_effects/redstone/chest run function linear_progression:trim_effects/redstone/apply
execute if entity @s[tag=!redstone_legs] if predicate linear_progression:trim_effects/redstone/legs run function linear_progression:trim_effects/redstone/apply
execute if entity @s[tag=!redstone_feet] if predicate linear_progression:trim_effects/redstone/feet run function linear_progression:trim_effects/redstone/apply
execute if entity @s[tag=redstone_head] unless predicate linear_progression:trim_effects/redstone/head run function linear_progression:trim_effects/redstone/remove
execute if entity @s[tag=redstone_chest] unless predicate linear_progression:trim_effects/redstone/chest run function linear_progression:trim_effects/redstone/remove
execute if entity @s[tag=redstone_legs] unless predicate linear_progression:trim_effects/redstone/legs run function linear_progression:trim_effects/redstone/remove
execute if entity @s[tag=redstone_feet] unless predicate linear_progression:trim_effects/redstone/feet run function linear_progression:trim_effects/redstone/remove
