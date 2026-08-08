scoreboard players set @s copper_trim 0
execute if predicate linear_progression:trim_effects/copper/head run scoreboard players add @s copper_trim 1
execute if predicate linear_progression:trim_effects/copper/chest run scoreboard players add @s copper_trim 1
execute if predicate linear_progression:trim_effects/copper/legs run scoreboard players add @s copper_trim 1
execute if predicate linear_progression:trim_effects/copper/feet run scoreboard players add @s copper_trim 1

execute unless score @s copper_trim matches 1.. run attribute @s scale modifier remove copper_one
execute unless score @s copper_trim matches 2.. run attribute @s scale modifier remove copper_two
execute unless score @s copper_trim matches 3.. run attribute @s scale modifier remove copper_three
execute unless score @s copper_trim matches 4 run attribute @s scale modifier remove copper_four

execute unless predicate linear_progression:trim_effects/copper/head run tag @s remove copper_head
execute unless predicate linear_progression:trim_effects/copper/chest run tag @s remove copper_chest
execute unless predicate linear_progression:trim_effects/copper/legs run tag @s remove copper_legs
execute unless predicate linear_progression:trim_effects/copper/feet run tag @s remove copper_feet
