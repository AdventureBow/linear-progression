# Convert a fraction of endermen into shulkers (except the End).
# Target ratio: about half as many shulkers as endermen (convert ~1/3 when under cap).
# Shulkers never despawn on their own, so far ones are cleaned up each slow tick.

function linear_progression:shulker_spawn/despawn_far_shulkers

# Warped forest
execute as @e[type=minecraft:enderman,tag=!shulker_checked] at @s if biome ~ ~ ~ minecraft:warped_forest run function linear_progression:shulker_spawn/roll_warped

# Overworld + rest of nether (not the End, not already handled warped)
execute as @e[type=minecraft:enderman,tag=!shulker_checked] at @s unless biome ~ ~ ~ minecraft:warped_forest unless dimension minecraft:the_end run function linear_progression:shulker_spawn/roll_anywhere
