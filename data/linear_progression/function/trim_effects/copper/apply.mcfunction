scoreboard players set @s copper_trim 0
execute if predicate linear_progression:trim_effects/copper/head run scoreboard players add @s copper_trim 1
execute if predicate linear_progression:trim_effects/copper/chest run scoreboard players add @s copper_trim 1
execute if predicate linear_progression:trim_effects/copper/legs run scoreboard players add @s copper_trim 1
execute if predicate linear_progression:trim_effects/copper/feet run scoreboard players add @s copper_trim 1

execute if score @s copper_trim matches 1.. run attribute @s scale modifier add copper_one -0.21 add_value
execute if score @s copper_trim matches 2.. run attribute @s scale modifier add copper_two -0.14 add_value
execute if score @s copper_trim matches 3.. run attribute @s scale modifier add copper_three -0.12 add_value
execute if score @s copper_trim matches 4 run attribute @s scale modifier add copper_four -0.2 add_value

execute if predicate linear_progression:trim_effects/copper/head run tag @s add copper_head
execute if predicate linear_progression:trim_effects/copper/chest run tag @s add copper_chest
execute if predicate linear_progression:trim_effects/copper/legs run tag @s add copper_legs
execute if predicate linear_progression:trim_effects/copper/feet run tag @s add copper_feet
