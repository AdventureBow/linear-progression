# Remove amethyst attack damage
execute unless predicate linear_progression:trim_effects/amethyst/head run attribute @s attack_damage modifier remove amethyst_head
execute unless predicate linear_progression:trim_effects/amethyst/chest run attribute @s attack_damage modifier remove amethyst_chest
execute unless predicate linear_progression:trim_effects/amethyst/legs run attribute @s attack_damage modifier remove amethyst_legs
execute unless predicate linear_progression:trim_effects/amethyst/feet run attribute @s attack_damage modifier remove amethyst_feet
execute unless predicate linear_progression:trim_effects/amethyst/head run tag @s remove amethyst_head
execute unless predicate linear_progression:trim_effects/amethyst/chest run tag @s remove amethyst_chest
execute unless predicate linear_progression:trim_effects/amethyst/legs run tag @s remove amethyst_legs
execute unless predicate linear_progression:trim_effects/amethyst/feet run tag @s remove amethyst_feet
