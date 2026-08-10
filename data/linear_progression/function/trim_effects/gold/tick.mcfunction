# Gold trim — mining speed (stronger with gold tools, weaker with others)
execute unless predicate linear_progression:trim_effects/gold/any if entity @s[tag=gold_trim_active] run function linear_progression:trim_effects/gold/remove
execute unless predicate linear_progression:trim_effects/gold/any run return fail

execute if predicate linear_progression:trim_effects/gold/any run function linear_progression:trim_effects/gold/particle
function linear_progression:trim_effects/gold/refresh
