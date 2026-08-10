# Cave spider: 2× speed, HP = chicken (4). Once only via mob_tuned.
attribute @s minecraft:movement_speed modifier add linear_progression:mob_tuned_speed 0.1 add_value
attribute @s minecraft:max_health base set 4
data modify entity @s Health set value 4.0f
tag @s add mob_tuned
