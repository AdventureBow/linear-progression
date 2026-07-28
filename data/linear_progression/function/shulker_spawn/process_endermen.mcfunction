# Endermen → shulkers (not the End); despawn natural shulkers like hostiles.
function linear_progression:shulker_spawn/despawn_far_shulkers

execute as @e[type=minecraft:enderman,tag=!shulker_checked] at @s if biome ~ ~ ~ minecraft:warped_forest run function linear_progression:shulker_spawn/roll_enderman
execute as @e[type=minecraft:enderman,tag=!shulker_checked] at @s unless biome ~ ~ ~ minecraft:warped_forest unless dimension minecraft:the_end run function linear_progression:shulker_spawn/roll_enderman
