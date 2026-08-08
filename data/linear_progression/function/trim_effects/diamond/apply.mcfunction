# Diamond: +1 armor per piece (4 total full set) +1 toughness per piece
execute if predicate linear_progression:trim_effects/diamond/head run attribute @s armor modifier add diamond_head 1 add_value
execute if predicate linear_progression:trim_effects/diamond/chest run attribute @s armor modifier add diamond_chest 1 add_value
execute if predicate linear_progression:trim_effects/diamond/legs run attribute @s armor modifier add diamond_legs 1 add_value
execute if predicate linear_progression:trim_effects/diamond/feet run attribute @s armor modifier add diamond_feet 1 add_value
execute if predicate linear_progression:trim_effects/diamond/head run attribute @s armor_toughness modifier add diamond_head 1 add_value
execute if predicate linear_progression:trim_effects/diamond/chest run attribute @s armor_toughness modifier add diamond_chest 1 add_value
execute if predicate linear_progression:trim_effects/diamond/legs run attribute @s armor_toughness modifier add diamond_legs 1 add_value
execute if predicate linear_progression:trim_effects/diamond/feet run attribute @s armor_toughness modifier add diamond_feet 1 add_value
execute if predicate linear_progression:trim_effects/diamond/head run tag @s add diamond_head
execute if predicate linear_progression:trim_effects/diamond/chest run tag @s add diamond_chest
execute if predicate linear_progression:trim_effects/diamond/legs run tag @s add diamond_legs
execute if predicate linear_progression:trim_effects/diamond/feet run tag @s add diamond_feet
