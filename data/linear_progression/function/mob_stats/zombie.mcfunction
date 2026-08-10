# Zombie / husk / zombie villager: +0.1 speed, −4 max HP (20 → 16). Once via mob_tuned.
attribute @s minecraft:movement_speed modifier add linear_progression:mob_tuned_speed 0.1 add_value
attribute @s minecraft:max_health base set 16
data modify entity @s Health set value 16.0f
tag @s add mob_tuned
