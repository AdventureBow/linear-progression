# One roll per enderman: 30% convert (rarity/rare).
tag @s add shulker_checked
execute if predicate linear_progression:rarity/rare run function linear_progression:shulker_spawn/convert_to_shulker
