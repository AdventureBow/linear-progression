# Master difficulty equip only (level already 2 — skip advancement scans).
execute as @a[advancements={minecraft:end/kill_dragon=true},tag=!master] run tag @s add master
execute as @e[type=#linear_progression:armorable_mobs,tag=!boosted,limit=30] if predicate linear_progression:empty_armor run function linear_progression:difficulty_boost/master_mode
