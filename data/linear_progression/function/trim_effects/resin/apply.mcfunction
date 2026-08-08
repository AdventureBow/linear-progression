scoreboard players set @s resin_trim 0
execute if predicate linear_progression:trim_effects/resin/head run scoreboard players add @s resin_trim 1
execute if predicate linear_progression:trim_effects/resin/chest run scoreboard players add @s resin_trim 1
execute if predicate linear_progression:trim_effects/resin/legs run scoreboard players add @s resin_trim 1
execute if predicate linear_progression:trim_effects/resin/feet run scoreboard players add @s resin_trim 1

execute if score @s resin_trim matches 1 run effect give @s resistance 1 0
execute if score @s resin_trim matches 2 run effect give @s resistance 1 1
execute if score @s resin_trim matches 3 run effect give @s resistance 1 2
execute if score @s resin_trim matches 4 run effect give @s resistance 1 3

execute if score @s resin_trim matches 1 run attribute @s movement_speed modifier add resin_one -.03 add_value
execute if score @s resin_trim matches 2 run attribute @s movement_speed modifier add resin_two -.05 add_value
execute if score @s resin_trim matches 3 run attribute @s movement_speed modifier add resin_three -.07 add_value
execute if score @s resin_trim matches 4 run attribute @s movement_speed modifier add resin_four -.09 add_value

execute if score @s resin_trim matches 1 run attribute @s knockback_resistance modifier add resin_one .1 add_value
execute if score @s resin_trim matches 2 run attribute @s knockback_resistance modifier add resin_two .1 add_value
execute if score @s resin_trim matches 3 run attribute @s knockback_resistance modifier add resin_three .2 add_value
execute if score @s resin_trim matches 4 run attribute @s knockback_resistance modifier add resin_four .4 add_value

tag @s add resin_trim
