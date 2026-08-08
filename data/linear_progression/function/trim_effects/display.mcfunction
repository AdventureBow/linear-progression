# Armor stand display: particles for all trims + copper scale only (no combat effects).
# @s = armor_stand at its position.

execute unless predicate linear_progression:trim_effects/any_trim if entity @s[tag=!copper_head,tag=!copper_chest,tag=!copper_legs,tag=!copper_feet] run return fail

# Particles (all materials)
execute if predicate linear_progression:trim_effects/amethyst/any run function linear_progression:trim_effects/amethyst/particle
# copper particles run inside copper/tick (needs piece-count score)
execute if predicate linear_progression:trim_effects/diamond/any run function linear_progression:trim_effects/diamond/particle
execute if predicate linear_progression:trim_effects/emerald/any run function linear_progression:trim_effects/emerald/particle
execute if predicate linear_progression:trim_effects/gold/any run function linear_progression:trim_effects/gold/particle
execute if predicate linear_progression:trim_effects/iron/any run function linear_progression:trim_effects/iron/particle
execute if predicate linear_progression:trim_effects/lapis/any run function linear_progression:trim_effects/lapis/particle
execute if predicate linear_progression:trim_effects/netherite/any run function linear_progression:trim_effects/netherite/particle
execute if predicate linear_progression:trim_effects/quartz/any run function linear_progression:trim_effects/quartz/particle
execute if predicate linear_progression:trim_effects/redstone/any run function linear_progression:trim_effects/redstone/particle
execute if predicate linear_progression:trim_effects/resin/any run function linear_progression:trim_effects/resin/particle

# Copper scale only (display shrink)
function linear_progression:trim_effects/copper/tick
