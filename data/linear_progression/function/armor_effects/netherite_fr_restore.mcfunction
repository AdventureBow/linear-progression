# @s = entity; netherite_fr_dur = remaining potion duration in ticks.
# Convert to seconds (min 1) and re-apply as a normal (non-hidden) effect.

execute store result storage linear_progression:netherite sec int 0.05 run scoreboard players get @s netherite_fr_dur
execute if score @s netherite_fr_dur matches 1..19 run data modify storage linear_progression:netherite sec set value 1
function linear_progression:armor_effects/netherite_fr_restore_macro with storage linear_progression:netherite
