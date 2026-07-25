# Check each armor slot and apply random trim if it has armor
execute if data entity @s ArmorItems[0].id run function linear_progression:difficulty_boost/trim/trim_head
execute if data entity @s ArmorItems[1].id run function linear_progression:difficulty_boost/trim/trim_chest
execute if data entity @s ArmorItems[2].id run function linear_progression:difficulty_boost/trim/trim_legs
execute if data entity @s ArmorItems[3].id run function linear_progression:difficulty_boost/trim/trim_feet
