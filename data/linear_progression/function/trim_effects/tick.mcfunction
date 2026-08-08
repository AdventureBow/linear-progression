# Powerful Trims — single entity pass (perf), per-material modules.
execute as @e[type=#linear_progression:trimmed_mobs] at @s run function linear_progression:trim_effects/process

# Armor stands: particles + copper scale only when a player is within 10 blocks
execute as @e[type=minecraft:armor_stand] at @s if entity @a[distance=..10] run function linear_progression:trim_effects/display

# Amethyst: boost newly shot arrows (+1 damage NBT per amethyst piece on shooter)
execute as @e[type=#minecraft:arrows,tag=!lp_amethyst_arrow] run function linear_progression:trim_effects/amethyst/boost_arrow

# Lapis XP boost (orbs only once; nearest player within 5 blocks)
execute as @e[type=experience_orb,tag=!lapis_xp_orb] at @s run function linear_progression:trim_effects/lapis/boost_orb
