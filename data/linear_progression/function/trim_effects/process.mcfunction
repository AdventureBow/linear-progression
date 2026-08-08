# @s = player/mob from trimmed_mobs tag. Skip fully bare entities fast.
execute unless predicate linear_progression:trim_effects/any_trim if entity @s[tag=!amethyst_head,tag=!amethyst_chest,tag=!amethyst_legs,tag=!amethyst_feet,tag=!copper_head,tag=!copper_chest,tag=!copper_legs,tag=!copper_feet,tag=!diamond_head,tag=!diamond_chest,tag=!diamond_legs,tag=!diamond_feet,tag=!emerald_head,tag=!emerald_chest,tag=!emerald_legs,tag=!emerald_feet,tag=!gold_head,tag=!gold_chest,tag=!gold_legs,tag=!gold_feet,tag=!iron_head,tag=!iron_chest,tag=!iron_legs,tag=!iron_feet,tag=!netherite_head,tag=!netherite_chest,tag=!netherite_legs,tag=!netherite_feet,tag=!quartz_head,tag=!quartz_chest,tag=!quartz_legs,tag=!quartz_feet,tag=!redstone_head,tag=!redstone_chest,tag=!redstone_legs,tag=!redstone_feet,tag=!resin_trim] run return fail

function linear_progression:trim_effects/amethyst/tick
function linear_progression:trim_effects/copper/tick
function linear_progression:trim_effects/diamond/tick
function linear_progression:trim_effects/emerald/tick
function linear_progression:trim_effects/gold/tick
function linear_progression:trim_effects/iron/tick
function linear_progression:trim_effects/lapis/tick
function linear_progression:trim_effects/netherite/tick
function linear_progression:trim_effects/quartz/tick
function linear_progression:trim_effects/redstone/tick
function linear_progression:trim_effects/resin/tick
