# Emerald — gravity/jump (disabled while sneaking)
execute unless predicate linear_progression:trim_effects/emerald/any if entity @s[tag=!emerald_head,tag=!emerald_chest,tag=!emerald_legs,tag=!emerald_feet] run return fail

execute if predicate linear_progression:trim_effects/emerald/any run function linear_progression:trim_effects/emerald/particle
execute if entity @s[tag=!emerald_head] if predicate linear_progression:trim_effects/emerald/head unless predicate linear_progression:trim_effects/sneaking run function linear_progression:trim_effects/emerald/apply
execute if entity @s[tag=!emerald_chest] if predicate linear_progression:trim_effects/emerald/chest unless predicate linear_progression:trim_effects/sneaking run function linear_progression:trim_effects/emerald/apply
execute if entity @s[tag=!emerald_legs] if predicate linear_progression:trim_effects/emerald/legs unless predicate linear_progression:trim_effects/sneaking run function linear_progression:trim_effects/emerald/apply
execute if entity @s[tag=!emerald_feet] if predicate linear_progression:trim_effects/emerald/feet unless predicate linear_progression:trim_effects/sneaking run function linear_progression:trim_effects/emerald/apply
execute if entity @s[tag=emerald_head] unless predicate linear_progression:trim_effects/emerald/head run function linear_progression:trim_effects/emerald/remove
execute if entity @s[tag=emerald_chest] unless predicate linear_progression:trim_effects/emerald/chest run function linear_progression:trim_effects/emerald/remove
execute if entity @s[tag=emerald_legs] unless predicate linear_progression:trim_effects/emerald/legs run function linear_progression:trim_effects/emerald/remove
execute if entity @s[tag=emerald_feet] unless predicate linear_progression:trim_effects/emerald/feet run function linear_progression:trim_effects/emerald/remove
execute if predicate linear_progression:trim_effects/emerald/any if predicate linear_progression:trim_effects/sneaking run function linear_progression:trim_effects/emerald/remove
