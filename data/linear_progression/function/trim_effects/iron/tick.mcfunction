# Iron — interaction range
execute unless predicate linear_progression:trim_effects/iron/any if entity @s[tag=!iron_head,tag=!iron_chest,tag=!iron_legs,tag=!iron_feet] run return fail

execute if predicate linear_progression:trim_effects/iron/any run function linear_progression:trim_effects/iron/particle
execute if entity @s[tag=!iron_head] if predicate linear_progression:trim_effects/iron/head run function linear_progression:trim_effects/iron/apply
execute if entity @s[tag=!iron_chest] if predicate linear_progression:trim_effects/iron/chest run function linear_progression:trim_effects/iron/apply
execute if entity @s[tag=!iron_legs] if predicate linear_progression:trim_effects/iron/legs run function linear_progression:trim_effects/iron/apply
execute if entity @s[tag=!iron_feet] if predicate linear_progression:trim_effects/iron/feet run function linear_progression:trim_effects/iron/apply
execute if entity @s[tag=iron_head] unless predicate linear_progression:trim_effects/iron/head run function linear_progression:trim_effects/iron/remove
execute if entity @s[tag=iron_chest] unless predicate linear_progression:trim_effects/iron/chest run function linear_progression:trim_effects/iron/remove
execute if entity @s[tag=iron_legs] unless predicate linear_progression:trim_effects/iron/legs run function linear_progression:trim_effects/iron/remove
execute if entity @s[tag=iron_feet] unless predicate linear_progression:trim_effects/iron/feet run function linear_progression:trim_effects/iron/remove
