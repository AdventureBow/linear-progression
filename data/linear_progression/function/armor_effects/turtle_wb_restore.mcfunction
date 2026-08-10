# @s = player; turtle_wb_dur = remaining potion duration in ticks.
# Convert to seconds (min 1) and re-apply as a normal (non-hidden) effect.

execute store result storage linear_progression:turtle sec int 0.05 run scoreboard players get @s turtle_wb_dur
execute if score @s turtle_wb_dur matches 1..19 run data modify storage linear_progression:turtle sec set value 1
function linear_progression:armor_effects/turtle_wb_restore_macro with storage linear_progression:turtle
