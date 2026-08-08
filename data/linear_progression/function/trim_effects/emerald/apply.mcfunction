scoreboard players set @s emerald_trim 0
execute if predicate linear_progression:trim_effects/emerald/head run scoreboard players add @s emerald_trim 1
execute if predicate linear_progression:trim_effects/emerald/chest run scoreboard players add @s emerald_trim 1
execute if predicate linear_progression:trim_effects/emerald/legs run scoreboard players add @s emerald_trim 1
execute if predicate linear_progression:trim_effects/emerald/feet run scoreboard players add @s emerald_trim 1

execute if score @s emerald_trim matches 4 run attribute @s safe_fall_distance modifier add emerald_full 9999999999 add_value

execute if predicate linear_progression:trim_effects/emerald/head run attribute @s gravity modifier add emerald_head -0.0085 add_value
execute if predicate linear_progression:trim_effects/emerald/chest run attribute @s gravity modifier add emerald_chest -0.0085 add_value
execute if predicate linear_progression:trim_effects/emerald/legs run attribute @s gravity modifier add emerald_legs -0.0085 add_value
execute if predicate linear_progression:trim_effects/emerald/feet run attribute @s gravity modifier add emerald_feet -0.0085 add_value

execute if predicate linear_progression:trim_effects/emerald/head run attribute @s safe_fall_distance modifier add emerald_head 3 add_value
execute if predicate linear_progression:trim_effects/emerald/chest run attribute @s safe_fall_distance modifier add emerald_chest 3 add_value
execute if predicate linear_progression:trim_effects/emerald/legs run attribute @s safe_fall_distance modifier add emerald_legs 3 add_value
execute if predicate linear_progression:trim_effects/emerald/feet run attribute @s safe_fall_distance modifier add emerald_feet 3 add_value

execute if predicate linear_progression:trim_effects/emerald/head run attribute @s jump_strength modifier add emerald_head 0.05 add_value
execute if predicate linear_progression:trim_effects/emerald/chest run attribute @s jump_strength modifier add emerald_chest 0.05 add_value
execute if predicate linear_progression:trim_effects/emerald/legs run attribute @s jump_strength modifier add emerald_legs 0.05 add_value
execute if predicate linear_progression:trim_effects/emerald/feet run attribute @s jump_strength modifier add emerald_feet 0.05 add_value

execute if predicate linear_progression:trim_effects/emerald/head run tag @s add emerald_head
execute if predicate linear_progression:trim_effects/emerald/chest run tag @s add emerald_chest
execute if predicate linear_progression:trim_effects/emerald/legs run tag @s add emerald_legs
execute if predicate linear_progression:trim_effects/emerald/feet run tag @s add emerald_feet
