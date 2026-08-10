# @s = player who just removed a turtle helmet (still has lp_turtle_wb).
# Drop our infinite WB, then restore any saved potion duration.

effect clear @s minecraft:water_breathing

# Restore potion WB if we saved a finite duration (ticks → seconds for /effect)
execute if score @s turtle_wb_dur matches 1.. run function linear_progression:armor_effects/turtle_wb_restore

scoreboard players reset @s turtle_wb_dur
tag @s remove lp_turtle_wb
