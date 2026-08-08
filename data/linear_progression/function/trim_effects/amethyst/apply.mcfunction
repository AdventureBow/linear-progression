# Amethyst: +0.5 melee attack_damage per piece (arrows boosted separately via damage NBT)
execute if predicate linear_progression:trim_effects/amethyst/head run attribute @s attack_damage modifier add amethyst_head 0.5 add_value
execute if predicate linear_progression:trim_effects/amethyst/chest run attribute @s attack_damage modifier add amethyst_chest 0.5 add_value
execute if predicate linear_progression:trim_effects/amethyst/legs run attribute @s attack_damage modifier add amethyst_legs 0.5 add_value
execute if predicate linear_progression:trim_effects/amethyst/feet run attribute @s attack_damage modifier add amethyst_feet 0.5 add_value
execute if predicate linear_progression:trim_effects/amethyst/head run tag @s add amethyst_head
execute if predicate linear_progression:trim_effects/amethyst/chest run tag @s add amethyst_chest
execute if predicate linear_progression:trim_effects/amethyst/legs run tag @s add amethyst_legs
execute if predicate linear_progression:trim_effects/amethyst/feet run tag @s add amethyst_feet
