# Amethyst — melee attack damage (+ arrow bonus handled in trim_effects/tick)
execute unless predicate linear_progression:trim_effects/amethyst/any if entity @s[tag=!amethyst_head,tag=!amethyst_chest,tag=!amethyst_legs,tag=!amethyst_feet] run return fail

execute if predicate linear_progression:trim_effects/amethyst/any run function linear_progression:trim_effects/amethyst/particle
execute if entity @s[tag=!amethyst_head] if predicate linear_progression:trim_effects/amethyst/head run function linear_progression:trim_effects/amethyst/apply
execute if entity @s[tag=!amethyst_chest] if predicate linear_progression:trim_effects/amethyst/chest run function linear_progression:trim_effects/amethyst/apply
execute if entity @s[tag=!amethyst_legs] if predicate linear_progression:trim_effects/amethyst/legs run function linear_progression:trim_effects/amethyst/apply
execute if entity @s[tag=!amethyst_feet] if predicate linear_progression:trim_effects/amethyst/feet run function linear_progression:trim_effects/amethyst/apply
execute if entity @s[tag=amethyst_head] unless predicate linear_progression:trim_effects/amethyst/head run function linear_progression:trim_effects/amethyst/remove
execute if entity @s[tag=amethyst_chest] unless predicate linear_progression:trim_effects/amethyst/chest run function linear_progression:trim_effects/amethyst/remove
execute if entity @s[tag=amethyst_legs] unless predicate linear_progression:trim_effects/amethyst/legs run function linear_progression:trim_effects/amethyst/remove
execute if entity @s[tag=amethyst_feet] unless predicate linear_progression:trim_effects/amethyst/feet run function linear_progression:trim_effects/amethyst/remove
