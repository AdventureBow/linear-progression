# @s = wearing turtle helmet in water — +50% movement_speed (1.5×).
attribute @s minecraft:movement_speed modifier remove linear_progression:turtle_wet_speed
attribute @s minecraft:movement_speed modifier add linear_progression:turtle_wet_speed 0.5 add_multiplied_base
tag @s add lp_turtle_swim
