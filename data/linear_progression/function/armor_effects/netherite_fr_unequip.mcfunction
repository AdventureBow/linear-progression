# @s = entity who dropped below netherite FR threshold (still has lp_netherite_fr).
# Drop our infinite FR, then restore any saved potion duration.

effect clear @s minecraft:fire_resistance

# Restore potion FR if we saved a finite duration (ticks → seconds for /effect)
execute if score @s netherite_fr_dur matches 1.. run function linear_progression:armor_effects/netherite_fr_restore

scoreboard players reset @s netherite_fr_dur
tag @s remove lp_netherite_fr
