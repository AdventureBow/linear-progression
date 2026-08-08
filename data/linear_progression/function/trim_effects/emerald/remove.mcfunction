scoreboard players set @s emerald_trim 0
execute if predicate linear_progression:trim_effects/emerald/head run scoreboard players add @s emerald_trim 1
execute if predicate linear_progression:trim_effects/emerald/chest run scoreboard players add @s emerald_trim 1
execute if predicate linear_progression:trim_effects/emerald/legs run scoreboard players add @s emerald_trim 1
execute if predicate linear_progression:trim_effects/emerald/feet run scoreboard players add @s emerald_trim 1

execute if score @s emerald_trim matches ..3 run attribute @s safe_fall_distance modifier remove emerald_full

execute unless predicate linear_progression:trim_effects/emerald/head run attribute @s gravity modifier remove emerald_head
execute unless predicate linear_progression:trim_effects/emerald/chest run attribute @s gravity modifier remove emerald_chest
execute unless predicate linear_progression:trim_effects/emerald/legs run attribute @s gravity modifier remove emerald_legs
execute unless predicate linear_progression:trim_effects/emerald/feet run attribute @s gravity modifier remove emerald_feet
execute if predicate linear_progression:trim_effects/sneaking run attribute @s gravity modifier remove emerald_head
execute if predicate linear_progression:trim_effects/sneaking run attribute @s gravity modifier remove emerald_chest
execute if predicate linear_progression:trim_effects/sneaking run attribute @s gravity modifier remove emerald_legs
execute if predicate linear_progression:trim_effects/sneaking run attribute @s gravity modifier remove emerald_feet

execute unless predicate linear_progression:trim_effects/emerald/head run attribute @s safe_fall_distance modifier remove emerald_head
execute unless predicate linear_progression:trim_effects/emerald/chest run attribute @s safe_fall_distance modifier remove emerald_chest
execute unless predicate linear_progression:trim_effects/emerald/legs run attribute @s safe_fall_distance modifier remove emerald_legs
execute unless predicate linear_progression:trim_effects/emerald/feet run attribute @s safe_fall_distance modifier remove emerald_feet

execute unless predicate linear_progression:trim_effects/emerald/head run attribute @s jump_strength modifier remove emerald_head
execute unless predicate linear_progression:trim_effects/emerald/chest run attribute @s jump_strength modifier remove emerald_chest
execute unless predicate linear_progression:trim_effects/emerald/legs run attribute @s jump_strength modifier remove emerald_legs
execute unless predicate linear_progression:trim_effects/emerald/feet run attribute @s jump_strength modifier remove emerald_feet
execute if predicate linear_progression:trim_effects/sneaking run attribute @s jump_strength modifier remove emerald_head
execute if predicate linear_progression:trim_effects/sneaking run attribute @s jump_strength modifier remove emerald_chest
execute if predicate linear_progression:trim_effects/sneaking run attribute @s jump_strength modifier remove emerald_legs
execute if predicate linear_progression:trim_effects/sneaking run attribute @s jump_strength modifier remove emerald_feet

execute unless predicate linear_progression:trim_effects/emerald/head run tag @s remove emerald_head
execute unless predicate linear_progression:trim_effects/emerald/chest run tag @s remove emerald_chest
execute unless predicate linear_progression:trim_effects/emerald/legs run tag @s remove emerald_legs
execute unless predicate linear_progression:trim_effects/emerald/feet run tag @s remove emerald_feet
execute if predicate linear_progression:trim_effects/sneaking run tag @s remove emerald_head
execute if predicate linear_progression:trim_effects/sneaking run tag @s remove emerald_chest
execute if predicate linear_progression:trim_effects/sneaking run tag @s remove emerald_legs
execute if predicate linear_progression:trim_effects/sneaking run tag @s remove emerald_feet
