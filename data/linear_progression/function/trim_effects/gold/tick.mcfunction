# Gold — block break speed
execute unless predicate linear_progression:trim_effects/gold/any if entity @s[tag=!gold_head,tag=!gold_chest,tag=!gold_legs,tag=!gold_feet] run return fail

execute if predicate linear_progression:trim_effects/gold/any run function linear_progression:trim_effects/gold/particle
execute if entity @s[tag=!gold_head] if predicate linear_progression:trim_effects/gold/head run function linear_progression:trim_effects/gold/apply
execute if entity @s[tag=!gold_chest] if predicate linear_progression:trim_effects/gold/chest run function linear_progression:trim_effects/gold/apply
execute if entity @s[tag=!gold_legs] if predicate linear_progression:trim_effects/gold/legs run function linear_progression:trim_effects/gold/apply
execute if entity @s[tag=!gold_feet] if predicate linear_progression:trim_effects/gold/feet run function linear_progression:trim_effects/gold/apply
execute if entity @s[tag=gold_head] unless predicate linear_progression:trim_effects/gold/head run function linear_progression:trim_effects/gold/remove
execute if entity @s[tag=gold_chest] unless predicate linear_progression:trim_effects/gold/chest run function linear_progression:trim_effects/gold/remove
execute if entity @s[tag=gold_legs] unless predicate linear_progression:trim_effects/gold/legs run function linear_progression:trim_effects/gold/remove
execute if entity @s[tag=gold_feet] unless predicate linear_progression:trim_effects/gold/feet run function linear_progression:trim_effects/gold/remove
